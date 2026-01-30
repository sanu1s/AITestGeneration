package org.example;

import com.atlassian.jira.rest.client.api.JiraRestClient;
import org.apache.hadoop.conf.Configuration;
import com.atlassian.jira.rest.client.api.domain.Issue;
import com.atlassian.jira.rest.client.api.domain.SearchResult;
import com.atlassian.jira.rest.client.internal.async.AsynchronousJiraRestClientFactory;
import static io.qdrant.client.WithPayloadSelectorFactory.enable;

import dev.langchain4j.model.chat.ChatModel;
import dev.langchain4j.model.embedding.EmbeddingModel;
import dev.langchain4j.model.embedding.onnx.allminilml6v2.AllMiniLmL6V2EmbeddingModel;
import dev.langchain4j.model.googleai.GoogleAiGeminiChatModel;
import dev.langchain4j.service.AiServices;
import dev.langchain4j.service.SystemMessage;
import dev.langchain4j.service.UserMessage;
import dev.langchain4j.service.V;
import io.qdrant.client.QdrantClient;
import io.qdrant.client.QdrantGrpcClient;
import io.qdrant.client.VectorsFactory;
import io.qdrant.client.grpc.Collections;
import io.qdrant.client.grpc.Points;
import io.qdrant.client.grpc.Points.ScoredPoint;
import io.qdrant.client.grpc.Points.SearchPoints;
import org.eclipse.jgit.api.Git;
import org.eclipse.jgit.transport.UsernamePasswordCredentialsProvider;
import java.io.File;

import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;
import static org.apache.spark.sql.functions.col;
import static org.apache.spark.sql.functions.regexp_replace;

import io.javalin.Javalin;
import io.javalin.http.staticfiles.Location;
import java.util.concurrent.CompletableFuture;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.nio.file.Paths;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static io.qdrant.client.PointIdFactory.id;
import static io.qdrant.client.ValueFactory.value;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.file.Files;


import java.util.concurrent.ConcurrentHashMap;

public class AgenticTestOrchestrator {

    // Job Status Management
    private static final Map<String, JobStatus> jobs = new ConcurrentHashMap<>();
    
    // Records for data exchange
    record JobStatus(String status, String message, String prUrl, String reportUrl, String acceptanceCriteria, String jiraQuality) {}
    record PipelineResult(String prUrl, String acceptanceCriteria, String jiraQuality) {}
    record JiraFetchResult(List<PlaywrightTestCase> testCases, String requirements) {}
    record JiraQualityResult(String score, String reasoning) {}

    private static final String JIRA_URL = "https://techsavy.atlassian.net";
    private static final String JIRA_USER = "arjunkrishnansuresh@gmail.com";
    private static final String JIRA_TOKEN = System.getenv("JIRA_TOKEN");

    private static final String GITHUB_REPO_URL = "https://github.com/sanu1s/AITestGeneration.git";
    private static final String GITHUB_TOKEN = System.getenv("GITHUB_TOKEN");
    private static final String GITHUB_USER = System.getenv("GITHUB_USER");
    
    // Define AI Service for Use Case generation
    interface UseCaseAssistant {
        @SystemMessage("{{prompt}}")
        JiraQualityResult checkQuality(@V("prompt") String systemPrompt, @UserMessage String requirements);

        @SystemMessage("{{prompt}}")
        TestCasesResponse generate(@V("prompt") String systemPrompt, @UserMessage String transcript);
    }

    @SuppressWarnings("null")
    public static void main(String[] args) throws Exception {
        // Ensure report directory exists to prevent Javalin crash
        File reportDir = new File("build/reports/allure-report/allureReport");
        if (!reportDir.exists()) {
            reportDir.mkdirs();
        }

        Javalin app = Javalin.create(config -> {
            config.staticFiles.add("/static", Location.CLASSPATH);
            config.staticFiles.add(staticFileConfig -> {
                staticFileConfig.hostedPath = "/report";
                staticFileConfig.directory = Paths.get("build/reports/allure-report/allureReport").toAbsolutePath().toString();
                staticFileConfig.location = Location.EXTERNAL;
            });
        });

        // Basic Authentication
        app.before(ctx -> {
            // Exclude /order/tracking from authentication
            if (ctx.path().equals("/order/tracking")) {
                return;
            }

            // Check for Basic Auth
            var creds = ctx.basicAuthCredentials();
            String expectedUser = System.getenv().getOrDefault("ADMIN_USER", "admin");
            String expectedPass = System.getenv().getOrDefault("ADMIN_PASS", "admin123");

            if (creds == null || !expectedUser.equals(creds.getUsername()) || !expectedPass.equals(creds.getPassword())) {
                ctx.header("WWW-Authenticate", "Basic realm=\"VectorDB AntiGravity\"");
                ctx.status(401).result("Unauthorized: Please log in.");
            }
        });

        // Update port to 8088 (standard for python/simple servers, used in tests)
        int port = 8088;
        try {
            port = Integer.parseInt(System.getenv().getOrDefault("PORT", "8088"));
        } catch (NumberFormatException e) {
            System.err.println("Invalid PORT env var, defaulting to 8088");
        }
        
        app.start(port);

        System.out.println("Server started at http://localhost:" + port);

        // Add Route for Order Tracking (Mock UI) - KEEPING THIS FOR TESTS
        app.get("/order/tracking", ctx -> {
            ctx.contentType("text/html");
            ctx.result(AgenticTestOrchestrator.class.getResourceAsStream("/static/tracking.html"));
        });
        //For Mock UI---END

        app.post("/run", ctx -> {
            String body = ctx.body();
            System.out.println("DEBUG: Received body: '" + body + "'");
            String epicKey = "";
            if (body.contains("epicKey")) {
                 // Simple manual JSON parse
                 int startIndex = body.indexOf("epicKey") + 9; // "epicKey":
                 epicKey = body.substring(startIndex).replaceAll("[^a-zA-Z0-9-]", "");
            } else {
                 // Fallback for raw string
                 epicKey = body.trim();
            }
            
            final String finalEpicKey = epicKey;
            
            System.out.println("Received request to run pipeline for: " + finalEpicKey);
            
            if (finalEpicKey.isEmpty()) {
                ctx.status(400).result("Invalid Key");
                return;
            }

            String jobId = UUID.randomUUID().toString();
            jobs.put(jobId, new JobStatus("IN_PROGRESS", "Starting pipeline...", null, null, null, null));

            CompletableFuture.runAsync(() -> {
                try {
                    jobs.put(jobId, new JobStatus("IN_PROGRESS", "Executing pipeline...", null, null, null, null));
                    PipelineResult result = executePipeline(finalEpicKey);
                    jobs.put(jobId, new JobStatus("COMPLETED", "Pipeline finished successfully.", result.prUrl(), "/report/index.html", result.acceptanceCriteria(), result.jiraQuality()));
                } catch (Exception e) {
                    e.printStackTrace();
                    jobs.put(jobId, new JobStatus("FAILED", "Error: " + e.getMessage(), null, null, null, null));
                }
            });

            ctx.json(Map.of("jobId", jobId, "status", "IN_PROGRESS", "message", "Pipeline started"));
        });

        // Prompt Engineering Endpoints
        app.get("/prompts", ctx -> {
             // List all .txt files in src/main/resources/prompts/
             File promptsDir = new File("src/main/resources/prompts/");
             if (!promptsDir.exists()) {
                 promptsDir.mkdirs();
             }
             String[] files = promptsDir.list((dir, name) -> name.endsWith(".txt"));
             if (files == null) files = new String[0];
             ctx.json(files);
        });

        app.get("/prompts/{filename}", ctx -> {
            String filename = ctx.pathParam("filename");
            // Security check: prevent directory traversal
            if (filename.contains("..") || filename.contains("/") || !filename.endsWith(".txt")) {
                ctx.status(403).result("Invalid filename");
                return;
            }
            
            try {
                // Try from local source first (dev mode)
                File file = new File("src/main/resources/prompts/" + filename);
                if (file.exists()) {
                     ctx.result(Files.readString(file.toPath()));
                } else {
                     // Fallback to classpath for reading (e.g. if packed in jar, though editing won't persist to src)
                     try (java.io.InputStream is = AgenticTestOrchestrator.class.getResourceAsStream("/prompts/" + filename);
                          BufferedReader reader = new BufferedReader(new InputStreamReader(is))) {
                          String content = reader.lines().collect(Collectors.joining("\n"));
                          ctx.result(content);
                     } catch (Exception e) {
                          ctx.status(404).result("Prompt not found");
                     }
                }
            } catch (Exception e) {
                ctx.status(500).result("Error reading prompt: " + e.getMessage());
            }
        });

        app.post("/prompts/{filename}", ctx -> {
            String filename = ctx.pathParam("filename");
            // Security check
            if (filename.contains("..") || filename.contains("/") || !filename.endsWith(".txt")) {
                ctx.status(403).result("Invalid filename");
                return;
            }
            
            String newContent = ctx.body();
            
            try {
                // Write to local source file
                File file = new File("src/main/resources/prompts/" + filename);
                // Ensure directory exists
                file.getParentFile().mkdirs();
                
                FileWriter writer = new FileWriter(file);
                writer.write(newContent);
                writer.close();
                
                ctx.result("Prompt saved successfully");
            } catch (Exception e) {
                ctx.status(500).result("Error saving prompt: " + e.getMessage());
            }
        });

        app.get("/status/{jobId}", ctx -> {
            String jobId = ctx.pathParam("jobId");
            JobStatus status = jobs.get(jobId);
            if (status != null) {
                ctx.json(status);
            } else {
                ctx.status(404).result("Job not found");
            }
        });

        // Split Action: Fetch Requirements Only
        app.post("/fetch-requirements", ctx -> {
            String body = ctx.body();
            String epicKey = "";
            if (body.contains("epicKey")) {
                 int startIndex = body.indexOf("epicKey") + 9; 
                 epicKey = body.substring(startIndex).replaceAll("[^a-zA-Z0-9-]", "");
            } else {
                 epicKey = body.trim();
            }
            
            final String finalEpicKey = epicKey;
            if (finalEpicKey.isEmpty()) {
                ctx.status(400).result("Invalid Key");
                return;
            }

            String jobId = UUID.randomUUID().toString();
            jobs.put(jobId, new JobStatus("IN_PROGRESS", "Fetching requirements...", null, null, null, null));

            CompletableFuture.runAsync(() -> {
                try {
                    // Create minimal Assistant just for Quality Check (Gemini setup duplicate but fine)
                     String geminiApiKey = System.getenv("GEMINI_API_KEY");
                     ChatModel model = GoogleAiGeminiChatModel.builder()
                        .apiKey(geminiApiKey)
                        .modelName("gemini-2.5-flash")
                        .temperature(0.7)
                        .maxRetries(3)
                        .timeout(java.time.Duration.ofSeconds(60))
                        .build();
                    UseCaseAssistant assistant = AiServices.create(UseCaseAssistant.class, model);

                    // Fetch ONLY (false)
                    JiraFetchResult result = ReadDataFromJIRADashBoardDetails(assistant, finalEpicKey, false);
                    String requirements = result.requirements();
                    
                    // Run Quality Check
                    String qualityHtml = "<div class='quality-score'>N/A</div>";
                    String jiraQualityPrompt = loadPrompt("jira_quality_system_prompt.txt");
                    if (requirements != null && !requirements.isEmpty()) {
                         // Strip HTML tags for AI prompt? Or keep them? 
                         // The requirements string has <h3> etc. The AI might handle it, or we should strip. 
                         // Let's pass as is, the original code passed 'requirementsData' which was plain text Summary/Desc.
                         // Wait, 'ReadData...' returns HTML string for display. 
                         // But for QA, we need the content.
                         // Ah, 'ReadData...' constructs 'requirementsBuilder' with HTML.
                         // In 'executePipeline', we used 'capturedRequirements' (HTML) to pass to 'checkQuality'. 
                         // "Analyze these requirements:\n" + capturedRequirements
                         // So passing HTML is fine.
                         JiraQualityResult quality = assistant.checkQuality(jiraQualityPrompt, "Analyze these requirements:\n" + requirements);
                         qualityHtml = String.format(
                             "<div style='text-align:center; padding:10px;'>" +
                             "<div style='font-size:2rem; font-weight:bold; color:var(--accent-green);'>%s</div>" +
                             "<div style='margin-top:5px; color:var(--text-secondary); font-size:0.9rem;'>%s</div>" +
                             "</div>",
                             quality.score(), quality.reasoning()
                         );
                    }
                    
                    jobs.put(jobId, new JobStatus("COMPLETED", "Requirements fetched.", null, null, requirements, qualityHtml));

                } catch (Exception e) {
                    e.printStackTrace();
                    jobs.put(jobId, new JobStatus("FAILED", "Error: " + e.getMessage(), null, null, null, null));
                }
            });
            
            ctx.json(Map.of("jobId", jobId, "status", "IN_PROGRESS", "message", "Fetching started"));
        });
    }

    public static PipelineResult executePipeline(String issueKeyInput) throws Exception {
        boolean isTranscriptEnabled = false;
        // 0. Initialize HDFS Configuration
        Configuration conf = new Configuration();
        conf.set("fs.viewfs.impl", "org.apache.hadoop.fs.viewfs.ViewFileSystem");
        conf.set("fs.hdfs.impl", "org.apache.hadoop.hdfs.DistributedFileSystem");

        String gitHubToken = GITHUB_TOKEN;
        if (gitHubToken == null || gitHubToken.trim().isEmpty()) {
            System.out.println("WARNING: GITHUB_TOKEN is not valid. Git push might fail.");
        }

        String geminiApiKey = System.getenv("GEMINI_API_KEY");
        String githubUser = GITHUB_USER;

        if (geminiApiKey == null || geminiApiKey.trim().isEmpty()) {
             System.err.println("CRITICAL: GEMINI_API_KEY is missing!");
             throw new IllegalArgumentException("GEMINI_API_KEY environment variable is not set.");
        }   


        ChatModel model = GoogleAiGeminiChatModel.builder()
                .apiKey(geminiApiKey)
                .modelName("gemini-2.5-flash") // Reverting to gemini-2.5-flash
                .temperature(0.7)
                .maxRetries(3)
                .timeout(java.time.Duration.ofSeconds(60))
                .build();
        UseCaseAssistant assistant = AiServices.create(UseCaseAssistant.class, model);
        System.out.println("Initialize LangChain4j Model and Service");
        // 2. Load the data from JIRA dashBoards and then run via LLM
        List<PlaywrightTestCase> allTestCases = new ArrayList<>();
        String capturedRequirements = "";
        
        // Cleanup old features
        File featureDir = new File("src/test/resources/features");
        if (featureDir.exists()) {
            for (File file : featureDir.listFiles()) {
                if (file.getName().endsWith(".feature")) file.delete();
            }
        }
        // Cleanup old steps
        File stepsDir = new File("src/test/java/steps");
        if (stepsDir.exists()) {
            for (File file : stepsDir.listFiles()) {
                if (file.getName().endsWith("Steps.java") && !file.getName().equals("Hooks.java") && !file.getName().equals("TestContext.java")) {
                    file.delete();
                }
            }
        }
        
        JiraFetchResult fetchResult = ReadDataFromJIRADashBoardDetails(assistant, issueKeyInput, true);
        allTestCases.addAll(fetchResult.testCases());
        capturedRequirements = fetchResult.requirements();

        if(isTranscriptEnabled){
        // 3. Clean Noisy Data using Spark SQL Regex
        // Removes filler words (um, uh, you know) and timestamps like [00:12:34]
            SparkSession spark = SparkSession.builder()
                .appName("GradleJavaSpark2026")
                .master("local[*]")
                .config("spark.driver.bindAddress", "127.0.0.1") // Explicitly set the binding address
                .config("spark.driver.host", "localhost") // Ensure the driver host is also local
                .getOrCreate();
        // 3.Loading a CSV file
        Dataset<Row> rawTranscripts = spark.read()
                .option("header", "true")
                .option("inferSchema", "true")
                .csv("src/main/resources/Data.csv");
        String noisePattern = "(?i)\\b(um|uh|you know|like|actually)\\b|\\[\\d{2}:\\d{2}:\\d{2}\\]";
        Dataset<Row> cleanedTranscripts = rawTranscripts.withColumn("Text",
                regexp_replace(col("Text"), noisePattern, ""));
        // 5. Feed cleaned data to LLM
         allTestCases.addAll(feedDataCleanedUpDatatoLLM(cleanedTranscripts, assistant));
         spark.stop();
        }

        // 6. Create consolidated step definition file
        createConsolidatedStepDefinitionFile(allTestCases);

        // 7. Run the newly generated tests
        runGeneratedTests();

        // 8. Push to GitHub (Optional)
        String prUrl = null;
        if (gitHubToken != null && !gitHubToken.trim().isEmpty()) {
            String branchName = "ai-generated-tests-" + UUID.randomUUID().toString().substring(0, 8);
            prUrl = pushToGitHub(branchName, "AI generated Cucumber test cases for Jira requirements");
        } else {
            System.out.println("Skipping GitHub push (No Token)");
        }
        
        // 9. Check Jira Quality
        System.out.println("--- Starting Jira Quality Check ---");
        String qualityHtml = "<div class='quality-score'>N/A</div>";
        try {
             if (capturedRequirements != null && !capturedRequirements.isEmpty()) {
                 System.out.println("Requirements found, length: " + capturedRequirements.length());
                 String qaPrompt = loadPrompt("jira_quality_system_prompt.txt");
                 JiraQualityResult quality = assistant.checkQuality(qaPrompt, "Analyze these requirements:\n" + capturedRequirements);
                 System.out.println("Quality analysis received: " + quality);
                 
                 qualityHtml = String.format(
                     "<div style='text-align:center; padding:10px;'>" +
                     "<div style='font-size:2rem; font-weight:bold; color:var(--accent-green);'>%s</div>" +
                     "<div style='margin-top:5px; color:var(--text-secondary); font-size:0.9rem;'>%s</div>" +
                     "</div>",
                     quality.score(), quality.reasoning()
                 );
             } else {
                 System.out.println("Captured requirements are empty or null.");
             }
        } catch (Exception e) {
            System.err.println("Error checking quality: " + e.getMessage());
            e.printStackTrace();
        }
        System.out.println("--- Finished Jira Quality Check ---");
        
        return new PipelineResult(prUrl, capturedRequirements, qualityHtml);
    }

    private static List<PlaywrightTestCase> feedDataCleanedUpDatatoLLM(Dataset<Row> cleanedTranscripts, UseCaseAssistant assistant) {
        List<Row> rows = cleanedTranscripts.select("text").collectAsList();
        System.out.println("Feed cleaned data to LLM" + rows.getLast());
        List<PlaywrightTestCase> testCases = new ArrayList<>();
        for (Row row : rows) {
            System.out.println("Looping through the rows!!!!" + row.getString(0));
            String cleanText = row.getString(0);
            if (cleanText != null && !cleanText.trim().isEmpty()) {
                System.out.println("Going to feed AI");

                try {
                     String sysPrompt = loadPrompt("playwright_generation_system_prompt.txt");
                     TestCasesResponse response = assistant.generate(sysPrompt, "Identify use cases from this transcript: " + cleanText);
                     if (response != null && response.testCases != null) {
                         for (PlaywrightTestCase testCase : response.testCases) {
                            testCases.add(testCase);
                            System.out.println("AI Analysis:\n" + testCase.scenarioName);
                            System.out.println("AI Analysis:\n" + testCase.gherkinSteps);
                            createFeatureFile(testCase, "TR");
                         }
                     }
                } catch (Exception e) {
                   System.err.println("Error generating test cases from transcript: " + e.getMessage());
                }
            }
        }
        return testCases;
    }

    private static void ReadDataFromJIRADashBoard(UseCaseAssistant assistant) throws Exception {
        {
            // 1. Connect to Jira
            try (JiraRestClient jiraClient = new AsynchronousJiraRestClientFactory()
                    .createWithBasicHttpAuthentication(new URI(JIRA_URL), JIRA_USER, JIRA_TOKEN)) {
                // 2. Fetch the specific issue
                String issueKey = "KAN-1";
                Issue issue = jiraClient.getIssueClient().getIssue(issueKey).claim();
               
                // 3. Check if status is "Ready for QA"
                String currentStatus = issue.getStatus().getName();
                System.out.println("Issue " + issueKey + " is currently: " + currentStatus);

                if ("In Progress".equalsIgnoreCase(currentStatus)) {
                    System.out.println("Condition met. Reading requirements for Gemini analysis...");

                    String requirementsData = String.format("Summary: %s\nDescription: %s",
                            issue.getSummary(), issue.getDescription());
                    System.out.println("Requirements Data: " + requirementsData);
                    insertIntoVectorDB(requirementsData);
                    // 4. Send to Gemini for QA analysis
                    analyzeWithGeminiAI(requirementsData, assistant, issueKey);
                } else {
                    System.out.println("Skipping: Issue is not in 'Ready for QA' status.");
                }
            }
        }
    }
    private static JiraFetchResult ReadDataFromJIRADashBoardDetails(UseCaseAssistant assistant, String issueKeyInput, boolean generateTests) throws Exception {
        System.out.println("Reading data from JIRA for key: " + issueKeyInput + ". Generate Tests: " + generateTests);
        final String JQL_QUERY = "key = '" + issueKeyInput + "' OR parent = '" + issueKeyInput + "'";

        final int PAGE_SIZE = 50;
        int startAt = 0;
        List<PlaywrightTestCase> testCases = new ArrayList<>();
        StringBuilder requirementsBuilder = new StringBuilder();

        try (JiraRestClient jiraClient = new AsynchronousJiraRestClientFactory()
                .createWithBasicHttpAuthentication(new URI(JIRA_URL), JIRA_USER, JIRA_TOKEN)) {
            System.out.println("Jira client created");        
            boolean hasMoreResults = true;

            while (hasMoreResults) {
                Set<String> fields = new HashSet<>();
                fields.add("summary");
                fields.add("description");
                fields.add("status");
                fields.add("issuetype");
                fields.add("project");
                fields.add("priority");
                fields.add("created");
                fields.add("updated");

                SearchResult searchResult = jiraClient.getSearchClient()
                        .searchJql(JQL_QUERY, PAGE_SIZE, startAt, fields)
                        .claim();

                Iterable<Issue> issues = searchResult.getIssues();
                int issueCount = 0;
                System.out.println("Issues found: "+issues.toString());
                for (Issue issue : issues) {
                    issueCount++;
                    String issueKey = issue.getKey();
                    String currentStatus = issue.getStatus().getName();

                    System.out.println("Processing Issue [" + issueKey + "]: " + currentStatus);

                    String requirementsData = String.format("Summary: %s\nDescription: %s",
                            issue.getSummary(), issue.getDescription());
                    
                    requirementsBuilder.append("<h3>Issue: ").append(issueKey).append("</h3>");
                    requirementsBuilder.append("<p><strong>Summary:</strong> ").append(issue.getSummary()).append("</p>");
                    requirementsBuilder.append("<div class='desc'>").append(issue.getDescription() != null ? issue.getDescription() : "No description").append("</div><hr/>");

                    if (generateTests) {
                        System.out.println("Reading requirements for Gemini analysis...");
                        insertIntoVectorDB(requirementsData);
                        testCases.addAll(analyzeWithGeminiAI(requirementsData, assistant, issueKey));
                    }
                }

                startAt += PAGE_SIZE;
                hasMoreResults = issueCount == PAGE_SIZE;

                if (issueCount == 0) break;
            }
        }
        return new JiraFetchResult(testCases, requirementsBuilder.toString());
    }
    @SuppressWarnings("null")
    private static void insertIntoVectorDB(String requirementsData) throws InterruptedException, ExecutionException {
      String VECTOR_TOKEN = System.getenv("VECTOR_TOKEN");
      System.out.println("Hello World");
        // 1. Initialize Client (Default gRPC port is 6334)
        QdrantClient client = new QdrantClient(
                QdrantGrpcClient.newBuilder(
                                "4f9ed8ad-0ecc-4f51-b828-4774a7881c6d.europe-west3-0.gcp.cloud.qdrant.io",
                                6334,
                                true
                        )
                        .withApiKey(VECTOR_TOKEN)
                        .build()
        );
    
        // DEBUG: List available collections
        List<String> collections = client.listCollectionsAsync(Duration.ofSeconds(5)).get();
        System.out.println("Available Collections: " + collections);

        // 2. Ensure "my_collection_test" exists with correct dimensions (384 for MiniLM)
        if (!collections.contains("my_collection_test")) {
            System.out.println("Creating my_collection_test...");
            client.createCollectionAsync("my_collection_test",
                Collections.VectorParams.newBuilder()
                    .setSize(384)
                    .setDistance(Collections.Distance.Cosine)
                    .build()
            ).get();
        }

        System.out.println("Collection ready");
        EmbeddingModel embeddingModel = new AllMiniLmL6V2EmbeddingModel();

        // 3. Check the size of the data thats being send
        
        float[] vectorArray = embeddingModel.embed(requirementsData).content().vector();
           
         List<Float> vectorList = new ArrayList<>(vectorArray.length);
        for (float f : vectorArray) {
            vectorList.add(f);
        }
        System.out.println("Vector created successfully. Size: " + vectorList.size());

        // 4. Upsert sample data to ensure search has points
       // Instead of randomUUID which changes every time
       // UUID dynamicId = UUID.randomUUID(); 
       // Use a name-based UUID generated from the prompt text
       // This will always return the same UUID for the same string
       UUID deterministicId = UUID.nameUUIDFromBytes(requirementsData.getBytes());
       System.out.println("Upserting point with deterministic ID: " + deterministicId);
       System.out.println("Upserting sample point...");
        client.upsertAsync("my_collection_test", List.of(
            Points.PointStruct.newBuilder()
                .setId(id(deterministicId))
                .setVectors(VectorsFactory.vectors(vectorArray)) // Current vector as sample
                .putAllPayload(Map.of("original_prompt", value(requirementsData)))
                .build()
        )).get();
        
        // 5. Execute Search using the generated vector
        List<ScoredPoint> results = client.searchAsync(
            SearchPoints.newBuilder()
                .setCollectionName("my_collection_test")
                .addAllVector(vectorList) // Dynamically added prompt vector
                .setWithPayload(enable(true))
                .setLimit(1)
                .build()
        ).get();

        // 6. Process results
        for (ScoredPoint result : results) {
            System.out.println("Result: " + result.getPayloadMap().get("original_prompt"));
            System.out.println("Score: " + result.getScore());
        }
    }

    private static List<PlaywrightTestCase> analyzeWithGeminiAI(String requirementsData, UseCaseAssistant assistant, String issueKey) {
         String prompt = "Act as a QA Engineer. Review these requirements for testability and edge cases and generate multiple test cases with scenarios and different feature files.\n\n"
                 + "IMPORTANT CONTEXT FOR PLAYWRIGHT GENERATION:\n"
                 + "MAKE SURE THAT APPLICATION DETAILS ARE CORRECTLY MENTIONED IN THE PROMPT and READ FROM THE JIRA REQUIREMENTS\n"
                 + "HTML Structure:\n"
                 + "- Input field ID: '#order_no'\n"
                 + "- Submit Button Text: 'Track Order'\n"
                 + "- Result Container Class: '.result' (This container displays BOTH success messages and error messages).\n"
                 + "- THERE IS NO '.error' CLASS. You MUST verify errors by checking the text content of the '.result' element.\n"
                 + "- SPECIFIC REQUIREMENT: Verify that for valid orders, the output contains the text 'The order status Delayed'.\n\n"
                 + "REQUIREMENTS:\n"
                 + requirementsData;
        System.out.println("My prompt message is ===>" + prompt);
        List<PlaywrightTestCase> generatedTestCases = new ArrayList<>();
        String sysPrompt = loadPrompt("playwright_generation_system_prompt.txt");
        try {
            TestCasesResponse response = assistant.generate(sysPrompt, prompt);
            if (response != null && response.testCases != null) {
                generatedTestCases = response.testCases;
                for (PlaywrightTestCase testCase : generatedTestCases) {
                    // 2. Access specific fields directly
                    System.out.println("scenarioName:\n" + testCase.scenarioName);
                    System.out.println("gherkinSteps:\n" + testCase.gherkinSteps);
                    System.out.println("playwrightJavaCode:\n" + testCase.playwrightJavaCode);    
                    System.out.println("Going to write the feature file");
                    createFeatureFile(testCase, issueKey);
                }
            } else {
                 System.out.println("No test cases generated (null response).");
            }
        } catch (Exception e) {
            System.err.println("Error writing Gherkin file: " + e);
            e.printStackTrace();
        }
        return generatedTestCases;
    }


    private static void createStepDefinitionFile(PlaywrightTestCase testCase) {
        String filePath = "src/test/java/steps/";
        // Remove spaces and special characters for class name
        String className = testCase.featureName.replaceAll("[^a-zA-Z0-9]", "") + "Steps";
        String fileName = filePath + className + ".java";

        // Scrub AI output for illegal headers/imports if they escaped the prompt

        String scrubbedCode = scrubAndFixQuotes(testCase.playwrightJavaCode);


        String wrapperClass = "package steps;\n\n" +
                "import com.microsoft.playwright.Page;\n" +
                "import com.microsoft.playwright.options.AriaRole;\n" +
                "import com.microsoft.playwright.options.LoadState;\n" +
                "import com.microsoft.playwright.assertions.PlaywrightAssertions;\n" +
                "import io.cucumber.java.en.*;\n" +
                "import static com.microsoft.playwright.assertions.PlaywrightAssertions.assertThat;\n" +
                "import static org.junit.jupiter.api.Assertions.*;\n\n" +
                "/**\n" +
                " * AI-generated Step Definitions for: " + testCase.scenarioName + "\n" +
                " */\n" +
                "public class " + className + " {\n\n" +
                "    private final TestContext testContext;\n" +
                "    private final Page page;\n\n" +
                "    public " + className + "(TestContext testContext) {\n" +
                "        this.testContext = testContext;\n" +
                "        this.page = testContext.page;\n" +
                "    }\n\n" +
                scrubbedCode + "\n\n" +
                "}";

        try {
            Files.write(Paths.get(fileName), wrapperClass.getBytes());
            System.out.println("Step definition file generated: " + fileName);
        } catch (IOException e) {
            System.err.println("Error writing step definition file: " + e.getMessage());
        }
    }

    private static void runGeneratedTests() {
        System.out.println("\n--- Triggering Gradle Test Execution ---");
        try {
            // Determine the gradle command based on OS
            String gradleCmd = System.getProperty("os.name").toLowerCase().contains("win") ? "gradlew.bat" : "./gradlew";
            
            ProcessBuilder pb = new ProcessBuilder(gradleCmd, "clean", "test");
            pb.redirectErrorStream(true);
            Process process = pb.start();

            try (BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()))) {
                String line;
                while ((line = reader.readLine()) != null) {
                    System.out.println(line);
                }
            }

            int exitCode = process.waitFor();
            System.out.println("Gradle process finished with exit code: " + exitCode);

        // Generate Allure Report
        System.out.println("\n--- Generating Allure Report ---");
        ProcessBuilder pbAllure = new ProcessBuilder(gradleCmd, "allureReport", "--clean");
        pbAllure.redirectErrorStream(true);
        Process allureProcess = pbAllure.start();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(allureProcess.getInputStream()))) {
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
        }
        allureProcess.waitFor();
        System.out.println("Allure report generated in build/reports/allure-report");
        System.out.println("--- End of Allure Report Generation ---\n");
    } catch (Exception e) {
            System.err.println("Error during Gradle test execution: " + e.getMessage());
        }
        System.out.println("--- End of Gradle Test Execution ---\n");
    }

    private static void createFeatureFile(PlaywrightTestCase testCase, String issueKey) {
        String filePath = "src/test/resources/features/";
        String sanitizedFeatureName = testCase.featureName.replaceAll("\\s+", "_").toLowerCase();
        String sanitizedScenarioName = testCase.scenarioName.replaceAll("[^a-zA-Z0-9]", "_").toLowerCase();
        // Limit scenario name length to avoid filesystem issues
        if (sanitizedScenarioName.length() > 50) {
            sanitizedScenarioName = sanitizedScenarioName.substring(0, 50);
        }
        
        String fileName = filePath + issueKey + "_" + sanitizedFeatureName + "_" + sanitizedScenarioName + ".feature";

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(fileName))) {
            // 1. Write Feature Header (0 indentation)
            writer.write("Feature: " + testCase.featureName + "\n\n");

            // 2. Write Scenario Name (2 spaces indentation)
            writer.write("  Scenario: " + testCase.scenarioName + "\n");

            // 3. Write Gherkin Steps (4 spaces indentation)
            if (testCase.gherkinSteps != null) {
                for (String step : testCase.gherkinSteps) {
                    // Ensure the step starts with Given, When, Then, And, or But
                    writer.write("    " + step.trim() + "\n");
                }
            }

            System.out.println("Feature file generated: " + fileName);
        } catch (IOException e) {
            System.err.println("Error writing feature file: " + e.getMessage());
        }
    }

    private static void createConsolidatedStepDefinitionFile(List<PlaywrightTestCase> testCases) {
        String filePath = "src/test/java/steps/";
        String className = "AIGeneratedSteps";
        String fileName = filePath + className + ".java";

        Map<String, String> uniqueSteps = new HashMap<>();
        
        for (PlaywrightTestCase testCase : testCases) {
            String code = scrubAndFixQuotes(testCase.playwrightJavaCode);
            
            // Basic regex to find Cucumber annotation methods
            // Pattern: @(Given|When|Then)\(".*?"\)\n\s*public void .*?\(.*?\) \{.*?\}
            // We'll use a more flexible regex that looks for @Given, etc. and captures the method
            Pattern methodPattern = Pattern.compile("@(Given|When|Then)\\(.*?\\)\\s*public void .*?\\(.*?\\)\\s*\\{.*?\\}", Pattern.DOTALL);
            Matcher matcher = methodPattern.matcher(code);
            
            while (matcher.find()) {
                String fullMethod = matcher.group();
                // Extract and normalize the annotation part (e.g., @Given("...")) as the key to de-duplicate
                int annotationEnd = fullMethod.indexOf(")");
                if (annotationEnd != -1) {
                    String annotation = fullMethod.substring(0, annotationEnd + 1).trim();
                    // Normalize: remove all whitespace and change " to ' for comparison
                    String normalizedKey = annotation.replaceAll("\\s+", "").replace("\"", "'");
                    uniqueSteps.putIfAbsent(normalizedKey, fullMethod);
                }
            }
        }

        StringBuilder consolidatedCode = new StringBuilder();
        java.util.Set<String> usedMethodNames = new java.util.HashSet<>();
        
        for (String methodBody : uniqueSteps.values()) {
            // Check for duplicate method names and rename if necessary
            Pattern methodNamePattern = Pattern.compile("public void\\s+([a-zA-Z0-9_]+)\\s*\\(");
            Matcher nameMatcher = methodNamePattern.matcher(methodBody);
            
            if (nameMatcher.find()) {
                String methodName = nameMatcher.group(1);
                if (usedMethodNames.contains(methodName)) {
                    // Method name collision! Rename it.
                    String newMethodName = methodName + "_" + (usedMethodNames.size() + 1);
                    methodBody = methodBody.replaceFirst("public void\\s+" + methodName, "public void " + newMethodName);
                    usedMethodNames.add(newMethodName);
                } else {
                    usedMethodNames.add(methodName);
                }
            }
            consolidatedCode.append(methodBody).append("\n\n");
        }

        String wrapperClass = "package steps;\n\n" +
                "import com.microsoft.playwright.Page;\n" +
                "import com.microsoft.playwright.options.AriaRole;\n" +
                "import com.microsoft.playwright.options.LoadState;\n" +
                "import com.microsoft.playwright.assertions.PlaywrightAssertions;\n" +
                "import io.cucumber.java.en.*;\n" +
                "import static com.microsoft.playwright.assertions.PlaywrightAssertions.assertThat;\n" +
                "import static org.junit.jupiter.api.Assertions.*;\n\n" +
                "/**\n" +
                " * Consolidate AI-generated Step Definitions\n" +
                " */\n" +
                "public class " + className + " {\n\n" +
                "    private final TestContext testContext;\n" +
                "    private final Page page;\n\n" +
                "    public " + className + "(TestContext testContext) {\n" +
                "        this.testContext = testContext;\n" +
                "        this.page = testContext.page;\n" +
                "    }\n\n" +
                consolidatedCode.toString() +
                "}\n";

        try {
            Files.write(Paths.get(fileName), wrapperClass.getBytes());
            System.out.println("Consolidated Step definition file generated: " + fileName);
        } catch (IOException e) {
            System.err.println("Error writing consolidated step definition file: " + e.getMessage());
        }
    }

    private static String loadPrompt(String filename) {
        try {
            // Try loading from src/main/resources/prompts/ (Local Dev)
            java.nio.file.Path path = Paths.get("src/main/resources/prompts/" + filename);
            if (Files.exists(path)) {
                return Files.readString(path);
            }
            // Fallback: Try loading from classpath (Prod/Jar)
            try (java.io.InputStream is = AgenticTestOrchestrator.class.getResourceAsStream("/prompts/" + filename);
                 BufferedReader reader = new BufferedReader(new InputStreamReader(is))) {
                 return reader.lines().collect(Collectors.joining("\n"));
            }
        } catch (Exception e) {
            System.err.println("Failed to load prompt: " + filename + ". Using fallback empty string.");
            e.printStackTrace();
            return "";
        }
    }

    private static String pushToGitHub(String branchName, String commitMessage) {
        System.out.println("\n--- Pushing to GitHub ---");
        try {
            File localPath = new File(".");
            Git git;
            
            // Try to open existing repository or initialize if not exists
            try {
                git = Git.open(localPath);
            } catch (Exception e) {
                System.out.println("Initializing new Git repository...");
                git = Git.init().setDirectory(localPath).call();
            }
            
            // Check if HEAD exists (if not, it's a new repo with no commits)
            if (git.getRepository().resolve("HEAD") == null) {
                // Initial commit
                git.add().addFilepattern(".").call();
                git.commit().setMessage("Initial commit").call();
            }

            // Create branch
            git.branchCreate().setName(branchName).call();
            git.checkout().setName(branchName).call();

            // Add all files
            git.add().addFilepattern("src/test/resources/features").call();
            git.add().addFilepattern("src/test/java/steps").call();
            
            // Commit
            git.commit().setMessage(commitMessage).call();
            
            // Push
            // Assuming origin exists. Use UsernamePasswordCredentialsProvider with GITHUB_TOKEN
             git.push()
                .setCredentialsProvider(new UsernamePasswordCredentialsProvider(GITHUB_USER, GITHUB_TOKEN))
                .call();
                
             String repoUrl = GITHUB_REPO_URL.replace(".git", "");
             return repoUrl + "/pull/new/" + branchName;

        } catch (Exception e) {
            System.err.println("Error pushing to GitHub: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
    
    // Helper for scrubbing code
    private static String scrubAndFixQuotes(String code) {
         if (code == null) return "";
         // Remove markdown code blocks if any
         code = code.replaceAll("```java", "").replaceAll("```", "");
         return code;
    }
}

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
import java.util.Map;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static io.qdrant.client.PointIdFactory.id;
import static io.qdrant.client.ValueFactory.value;
import static org.apache.spark.sql.functions.col;
import static org.apache.spark.sql.functions.regexp_replace;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.file.Files;


import java.util.concurrent.ConcurrentHashMap;

public class TranscriptPipelineUsingBDD {

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
        @SystemMessage("""
                You are a QA Lead.
                Your goal is to evaluate the quality of the provided JIRA requirements.
                
                Analyze the Summary and Description for:
                1. Clarity (Is it ambiguous?)
                2. Completeness (Are edge cases considered?)
                3. Testability (Can it be automated?)
                
                Output JSON ONLY:
                {
                  "score": "85%",
                  "reasoning": "Clear acceptance criteria but missing negative scenarios."
                }
                """)
        JiraQualityResult checkQuality(String requirements);

        @SystemMessage("""
                You are a Playwright Java Automation expert.
                Your goal is to generate both a Gherkin Feature file and its corresponding Java Step Definitions.
                
                --- GHERKIN RULES ---
                - Generate valid Gherkin steps for the 'gherkinSteps' list.
                - Use CONCRETE values in the feature steps.
                - FOR POSITIVE SCENARIOS: Use order number "ORD12345" to expect status "Delayed" and "Delivery Date".
                - FOR NEGATIVE/VALIDATION SCENARIOS: Use invalid inputs (e.g., non-numeric, wrong length) as specified in requirements and verify error messages.
                
                --- STEP DEFINITION RULES ---
                - For each Gherkin step, generate ONLY the corresponding Java Step Definition method body for 'playwrightJavaCode'.
                - CRITICAL: Do NOT generate 'public class ...', 'import ...', or any constructors.
                - ONLY generate the @Given, @When, @Then methods.
                - Use the 'page' object for all actions.
                - NEVER extract text manually (e.g., page.textContent()). 
                - ALWAYS use Locator assertions like: assertThat(page.locator(".result")).containsText("Expected");
                - Use assertThat(page).hasURL("..."); to check the current URL.
                - Add System.out.println("Executing: " + <StepName>); for transparency.
                
                CRITICAL LOCATORS:
                - Order Number Input: page.locator("#order_no")
                - Track Button: page.locator("button:has-text('Track Order')")
                - Status Message Result: page.locator(".result")
                - Error Message: page.locator(".error") or page.locator("#error-message") depending on context (guess sensible default if unsure).
                
                Example:
                If step is 'When User enters order number "ORD12345"', generate ONLY:
                @When("User enters order number {string}")
                public void enterOrder(String orderNo) {
                    System.out.println("Typing order number: " + orderNo);
                    page.locator("#order_no").fill(orderNo);
                }
                
                If step is 'Then The error message should display "Invalid Order"', generate:
                @Then("The error message should display {string}")
                public void verifyError(String msg) {
                     assertThat(page.locator(".error")).containsText(msg);
                }
                
                CRITICAL: Prefer generic steps (e.g., {string}) over hardcoded strings in annotations to avoid "AmbiguousStepDefinitionsException".
                CRITICAL: Response MUST be a raw JSON object only. Do NOT use markdown code blocks (e.g., ```json ... ```) or any other wrapping.""")
        TestCasesResponse generate(String transcript);
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
            // Check for Basic Auth
            var creds = ctx.basicAuthCredentials();
            String expectedUser = System.getenv().getOrDefault("ADMIN_USER", "admin");
            String expectedPass = System.getenv().getOrDefault("ADMIN_PASS", "admin123");

            if (creds == null || !expectedUser.equals(creds.getUsername()) || !expectedPass.equals(creds.getPassword())) {
                ctx.header("WWW-Authenticate", "Basic realm=\"VectorDB AntiGravity\"");
                ctx.status(401).result("Unauthorized: Please log in.");
            }
        });

        int port = 8088;
        try {
            port = Integer.parseInt(System.getenv().getOrDefault("PORT", "8088"));
        } catch (NumberFormatException e) {
            System.err.println("Invalid PORT env var, defaulting to 8088");
        }
        
        app.start(port);

        System.out.println("Server started at http://localhost:" + port);

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

        app.get("/status/{jobId}", ctx -> {
            String jobId = ctx.pathParam("jobId");
            JobStatus status = jobs.get(jobId);
            if (status != null) {
                ctx.json(status);
            } else {
                ctx.status(404).result("Job not found");
            }
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
        
        JiraFetchResult fetchResult = ReadDataFromJIRADashBoardDetails(assistant, issueKeyInput);
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
                 JiraQualityResult quality = assistant.checkQuality("Analyze these requirements:\n" + capturedRequirements);
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
                     TestCasesResponse response = assistant.generate("Identify use cases from this transcript: " + cleanText);
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
    private static JiraFetchResult ReadDataFromJIRADashBoardDetails(UseCaseAssistant assistant, String issueKeyInput) throws Exception {
        System.out.println("Reading data from JIRA for key: " + issueKeyInput);
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

                    System.out.println("Reading requirements for Gemini analysis...");
                    insertIntoVectorDB(requirementsData);

                    testCases.addAll(analyzeWithGeminiAI(requirementsData, assistant, issueKey));
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
                 + "The application is running at http://127.0.0.1:8000/order/tracking. \n"
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
        try {
            TestCasesResponse response = assistant.generate(prompt);
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
                System.out.println("Empty repository detected. Performing initial commit on default branch...");
                // Add all files (respecting .gitignore)
                git.add().addFilepattern(".").call();
                git.commit()
                   .setMessage("Initial commit - Base project structure")
                   .setAuthor("Antigravity AI", "ai@example.com")
                   .call();
            }

            // Create new branch
            System.out.println("Creating branch: " + branchName);
            git.branchCreate().setName(branchName).call();
            git.checkout().setName(branchName).call();

            // Add generated test files
            git.add().addFilepattern("src/test/resources/features").call();
            git.add().addFilepattern("src/test/java/steps").call();

            // Commit
            System.out.println("Committing changes...");
            git.commit().setMessage(commitMessage).setAuthor("Antigravity AI", "ai@example.com").call();

            // Push (only if token is provided)
            if (GITHUB_TOKEN == null || GITHUB_TOKEN.isEmpty() || GITHUB_TOKEN.equals("YOUR_GITHUB_TOKEN")) {
                System.out.println("Push skipped: GITHUB_TOKEN is not set or invalid.");
                return null;
            }

            System.out.println("Pushing to remote...");
            git.push()
               .setRemote(GITHUB_REPO_URL)
               .setCredentialsProvider(new UsernamePasswordCredentialsProvider(GITHUB_USER, GITHUB_TOKEN))
               .setForce(true) // Use force to ensure we can push to a new repo
               .call();

            System.out.println("Successfully pushed to branch: " + branchName);
            System.out.println("Review URL: " + GITHUB_REPO_URL.replace(".git", "/tree/" + branchName));
            return GITHUB_REPO_URL.replace(".git", "/tree/" + branchName);

        } catch (Exception e) {
            System.err.println("Error during Git operations: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    private static String scrubAndFixQuotes(String code) {
        // 1. Remove preamble before first annotation
         if (code.contains("@Given") || code.contains("@When") || code.contains("@Then")) {
            int firstAnnotation = code.indexOf("@");
            String prefix = code.substring(0, firstAnnotation);
            if (prefix.contains("class") || prefix.contains("package") || prefix.contains("import")) {
                code = code.substring(firstAnnotation);
            }
        }

        // 2. Fix unescaped quotes in Cucumber annotations
        // Regex to find @Then("...") and look inside the quotes
        // We look for @Annotation(" CONTENT ")
        Matcher matcher = Pattern.compile("(@(?:Given|When|Then)\\(\")(.*)(\"\\))").matcher(code);
        StringBuffer sb = new StringBuffer();
        while (matcher.find()) {
            String content = matcher.group(2);
            // Escape any " inside the content that isn't already escaped?
            // Simple replace " with \"
            // Note: This assumes the regex captured everything between the first and last quote.
            // If the content is empty (""), this logic does nothing which is fine, but result would be "" which is valid.
            // If content is "foo", result is \"foo\". @Then("\"foo\"") -> Valid.
            String escaped = content.replace("\"", "\\\""); 
            matcher.appendReplacement(sb, Matcher.quoteReplacement(matcher.group(1) + escaped + matcher.group(3)));
        }
        matcher.appendTail(sb);
        code = sb.toString();

        // 3. Remove structural boilerplate
        code = code.replaceAll("import\\s+.*;", "");
        code = code.replaceAll("public\\s+class\\s+\\w+\\s*\\{", "");
        code = code.replaceAll("class\\s+\\w+\\s*\\{", "");
        code = code.replaceAll("private\\s+Page\\s+page;", "");
        code = code.replaceAll("public\\s+\\w+Steps\\s*\\(Page\\s+page\\)\\s*\\{\\s*this.page\\s*=\\s*page;\\s*\\}", "");

        // 4. Fix braces
        long openBraces = code.chars().filter(ch -> ch == '{').count();
        long closeBraces = code.chars().filter(ch -> ch == '}').count();
        if (openBraces < closeBraces && code.trim().endsWith("}")) {
            int lastBraceIndex = code.lastIndexOf("}");
            code = code.substring(0, lastBraceIndex) + code.substring(lastBraceIndex + 1);
        }
        
        return code;
    }
}
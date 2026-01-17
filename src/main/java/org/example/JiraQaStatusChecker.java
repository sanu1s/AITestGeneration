package org.example;
import com.atlassian.jira.rest.client.api.JiraRestClient;
import com.atlassian.jira.rest.client.api.domain.Issue;
import com.atlassian.jira.rest.client.internal.async.AsynchronousJiraRestClientFactory;
import com.google.cloud.vertexai.VertexAI;
import com.google.cloud.vertexai.generativeai.GenerativeModel;
import com.google.cloud.vertexai.generativeai.ResponseHandler;
import dev.langchain4j.model.chat.ChatModel;
import dev.langchain4j.model.googleai.GoogleAiGeminiChatModel;
import dev.langchain4j.service.AiServices;

import java.net.URI;

public class JiraQaStatusChecker {
    private static final String JIRA_URL = "https://techsavy.atlassian.net";
    private static final String JIRA_USER = "arjunkrishnansuresh@gmail.com";
    private static final String JIRA_TOKEN = "ATATT3xFfGF0DcLCkEfxGEQsx8KeKpGqpNU5sX1BisXKKxqGP1zazYCWxazDf6Ts4-X_O_XhXSOg9kOYP9Yx3lnjKXDeuZlBd4o1sCmgEsaY3ZUmsbESIQdaUxesG3mHgU83eS-fcrKELyNi3-Ty_GgHL37CgdhKr0FZQf1OcJbIo50zeP0pzWA=6577795D";

    public static void main(String[] args) throws Exception {
        // 1. Connect to Jira
        JiraRestClient jiraClient = new AsynchronousJiraRestClientFactory()
                .createWithBasicHttpAuthentication(new URI(JIRA_URL), JIRA_USER, JIRA_TOKEN);

        try {
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

                // 4. Send to Gemini for QA analysis
                analyzeWithGemini(requirementsData);
            } else {
                System.out.println("Skipping: Issue is not in 'Ready for QA' status.");
            }
        } finally {
            jiraClient.close();
        }
    }

    private static void analyzeWithGemini(String text) throws Exception {
      /*  ChatModel model1 = GoogleAiGeminiChatModel.builder()
                .apiKey("AIzaSyBOMsOh3vQwVaG8sn73psLAgLDpqDUF3uQ")
                .modelName("gemini-2.5-flash") // Use latest models like 2.5 Flash
                .temperature(0.7)
                .build();
        TranscriptPipelineUsingBDD.UseCaseAssistant assistant = AiServices.create(TranscriptPipelineUsingBDD.UseCaseAssistant.class, model1);
       */

        try (VertexAI vertexAi = new VertexAI("gen-lang-client-0797152215", "us-central1")) {
            GenerativeModel model = new GenerativeModel("gemini-2.5-flash", vertexAi);

            String prompt = "Act as a QA Engineer. Review these requirements for testability and edge cases:\n\n" + text;
            var response = model.generateContent(prompt);

            System.out.println("\n--- Gemini QA Insights ---");
            System.out.println(ResponseHandler.getText(response));
        }
    }
}

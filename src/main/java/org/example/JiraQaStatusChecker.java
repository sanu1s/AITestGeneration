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
    private static final String JIRA_URL = "https://domain.atlassian.net";
    private static final String JIRA_USER = "test@a.com";
    private static final String JIRA_TOKEN = "Key";

    public static void main(String[] args) throws Exception {
        String JIRA_TOKEN = System.getenv("JIRA_TOKEN");
        if (JIRA_TOKEN == null || JIRA_TOKEN.trim().isEmpty()) {
            throw new IllegalArgumentException("JIRA_TOKEN environment variable is not set. Please set it before running the application.");
        }

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
    

        try (VertexAI vertexAi = new VertexAI("test", "us-central1")) {
            GenerativeModel model = new GenerativeModel("gemini-2.5-flash", vertexAi);

            String prompt = "Act as a QA Engineer. Review these requirements for testability and edge cases:\n\n" + text;
            var response = model.generateContent(prompt);

            System.out.println("\n--- Gemini QA Insights ---");
            System.out.println(ResponseHandler.getText(response));
        }
    }
}

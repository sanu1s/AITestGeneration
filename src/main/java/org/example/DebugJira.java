package org.example;

import com.atlassian.jira.rest.client.api.JiraRestClient;
import com.atlassian.jira.rest.client.internal.async.AsynchronousJiraRestClientFactory;
import com.atlassian.jira.rest.client.api.domain.Issue;
import com.atlassian.jira.rest.client.api.domain.SearchResult;
import com.atlassian.jira.rest.client.api.domain.BasicProject;

import java.net.URI;
import java.util.HashSet;
import java.util.Set;

public class DebugJira {

    private static final String JIRA_URL = "https://techsavy.atlassian.net";
    private static final String JIRA_USER = "arjunkrishnansuresh@gmail.com";

    public static void main(String[] args) {
        String JIRA_TOKEN = System.getenv("JIRA_TOKEN");
        if (JIRA_TOKEN == null || JIRA_TOKEN.trim().isEmpty()) {
            throw new IllegalArgumentException("JIRA_TOKEN environment variable is not set. Please set it before running the application.");
        }
        System.out.println("Starting DebugJira...");
        try (JiraRestClient jiraClient = new AsynchronousJiraRestClientFactory()
                .createWithBasicHttpAuthentication(new URI(JIRA_URL), JIRA_USER, JIRA_TOKEN)) {
            
            System.out.println("Client created.");

            System.out.println("\n--- Listing Projects ---");
            Iterable<BasicProject> projects = jiraClient.getProjectClient().getAllProjects().claim();
            for (BasicProject p : projects) {
                System.out.println("Project: " + p.getKey() + " - " + p.getName());
            }

            // Test 1: Broad search (assignee = currentUser()) to verify general access
            System.out.println("\n--- Test 1: Search 'assignee = currentUser()' ---");
            try {
                SearchResult result = jiraClient.getSearchClient().searchJql("assignee = currentUser()").claim();
                // System.out.println("Total: " + result.getTotal()); // Unsupported
                int count = 0;
                for (Issue issue : result.getIssues()) {
                    System.out.println(" - " + issue.getKey() + ": " + issue.getSummary());
                    count++;
                }
                System.out.println("Count in page: " + count);
            } catch (Exception e) {
                System.err.println("Test 1 Failed:");
                e.printStackTrace();
            }

            // Test 2: The problematic query 'project = KAN'
            System.out.println("\n--- Test 2: Search 'project = KAN' ---");
            try {
                SearchResult result = jiraClient.getSearchClient().searchJql("project = 'KAN'").claim();
                // System.out.println("Total: " + result.getTotal()); // Unsupported
                int count = 0;
                 for (Issue issue : result.getIssues()) {
                    System.out.println(" - " + issue.getKey() + ": " + issue.getSummary());
                    count++;
                }
                System.out.println("Count in page: " + count);
            } catch (Exception e) {
                System.err.println("Test 2 Failed:");
                e.printStackTrace();
            }

            // Test 3: The supposedly working query 'project = KAN AND status = In Progress'
            System.out.println("\n--- Test 3: Search 'project = KAN AND status = \"In Progress\"' ---");
            try {
                // Note: using single quotes for 'KAN' and 'In Progress' as per original code
                SearchResult result = jiraClient.getSearchClient().searchJql("project = 'KAN' AND status = 'In Progress'").claim();
                int count = 0;
                 for (Issue issue : result.getIssues()) {
                    System.out.println(" - " + issue.getKey() + ": " + issue.getSummary());
                    count++;
                }
                System.out.println("Count in page: " + count);
            } catch (Exception e) {
                System.err.println("Test 3 Failed:");
                e.printStackTrace();
            }

            // Test 4: Try to fetch a specific issue to force auth check
            System.out.println("\n--- Test 4: Get Issue 'KAN-1' ---");
            try {
                Issue issue = jiraClient.getIssueClient().getIssue("KAN-1").claim();
                System.out.println("Issue found: " + issue.getKey());
            } catch (Exception e) {
                System.err.println("Test 4 Failed: " + e.getMessage());
                // e.printStackTrace(); 
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("DebugJira finished.");
    }
}

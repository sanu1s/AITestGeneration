Feature: Live Agent Chat Functionality - Positive Test Cases

  Scenario: User can open and close the live chat window
    Given User navigates to the "https://example.com/support" page
    When User clicks the "Live Chat" button
    Then The chat window should be visible
    When User clicks the "Close" button on the chat window
    Then The chat window should not be visible

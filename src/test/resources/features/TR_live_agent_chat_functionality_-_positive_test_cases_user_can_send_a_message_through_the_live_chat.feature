Feature: Live Agent Chat Functionality - Positive Test Cases

  Scenario: User can send a message through the live chat
    Given User navigates to the "https://example.com/support" page
    When User clicks the "Live Chat" button
    And User types "I need help with my order." into the chat input
    And User clicks the "Send" button
    Then The chat history should display "I need help with my order."
    And The chat window should remain open

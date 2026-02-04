Feature: Live Agent Functionality - Positive Test Cases

  Scenario: User can send a message in an active chat
    Given User is on the "https://www.example.com/support" page
    When User clicks the "Live Chat" button
    And User enters "Alice Smith" in the name field
    And User enters "alice.smith@example.com" in the email field
    And User enters "Seeking help with product installation." in the query field
    And User clicks the "Start Chat" button
    And User types "Can you provide detailed steps for product X?" into the chat input
    And User clicks the "Send" button
    Then The message "Can you provide detailed steps for product X?" should be displayed in the chat history

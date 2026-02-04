Feature: Chatbot Initial Greeting Display - Positive Scenarios

  Scenario: Verify Chatbot Displays Milena's Greeting After Refreshing Chat Page
    Given User is on the chat support initiation page
    When User refreshes the page
    Then The chatbot greeting should be "Hello! My name is Milena, how may I help you?"

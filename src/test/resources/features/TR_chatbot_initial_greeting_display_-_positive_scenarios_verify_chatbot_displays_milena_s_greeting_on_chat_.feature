Feature: Chatbot Initial Greeting Display - Positive Scenarios

  Scenario: Verify Chatbot Displays Milena's Greeting on Chat Page Load
    Given User navigates to the chat support initiation page
    Then The chatbot greeting should be "Hello! My name is Milena, how may I help you?"

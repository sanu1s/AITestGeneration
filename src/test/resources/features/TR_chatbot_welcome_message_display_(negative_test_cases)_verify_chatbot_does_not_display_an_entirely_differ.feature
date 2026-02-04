Feature: Chatbot Welcome Message Display (Negative Test Cases)

  Scenario: Verify Chatbot does NOT display an entirely different welcome message
    Given User navigates to the chatbot interface
    Then The chat welcome message should not display "Hello! How can I assist you today?"

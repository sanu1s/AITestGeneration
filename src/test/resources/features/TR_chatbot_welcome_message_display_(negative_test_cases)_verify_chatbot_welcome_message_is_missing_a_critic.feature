Feature: Chatbot Welcome Message Display (Negative Test Cases)

  Scenario: Verify Chatbot welcome message is missing a critical phrase
    Given User navigates to the chatbot interface
    Then The chat welcome message should not contain "agent who can help immediately"

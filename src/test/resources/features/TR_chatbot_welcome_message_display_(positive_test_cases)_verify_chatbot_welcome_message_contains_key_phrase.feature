Feature: Chatbot Welcome Message Display (Positive Test Cases)

  Scenario: Verify Chatbot welcome message contains key phrases
    Given User navigates to the chatbot interface
    Then The chat welcome message should contain "AI Bot Assistant"
    And The chat welcome message should contain "connect you with an agent"

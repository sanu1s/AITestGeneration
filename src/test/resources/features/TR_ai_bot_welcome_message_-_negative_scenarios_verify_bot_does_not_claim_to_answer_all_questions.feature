Feature: AI Bot Welcome Message - Negative Scenarios

  Scenario: Verify bot does not claim to answer all questions
    Given User navigates to the AI Bot assistant page
    Then The AI Bot welcome message should not contain "I can answer all your questions."

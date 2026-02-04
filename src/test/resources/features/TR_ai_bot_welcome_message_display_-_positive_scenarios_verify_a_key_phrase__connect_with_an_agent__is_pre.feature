Feature: AI Bot Welcome Message Display - Positive Scenarios

  Scenario: Verify a key phrase "connect with an agent" is present in the welcome message
    Given the user navigates to the AI Bot chat interface
    Then the welcome message should contain "connect you with an agent"

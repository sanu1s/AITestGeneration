Feature: AI Bot Welcome Message Display - Negative Scenarios

  Scenario: Verify welcome message should not contain an irrelevant phrase
    Given the user navigates to the AI Bot chat interface
    Then the welcome message should not contain "Order tracking system"

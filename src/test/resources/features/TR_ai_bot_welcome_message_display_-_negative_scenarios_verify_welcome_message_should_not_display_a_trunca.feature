Feature: AI Bot Welcome Message Display - Negative Scenarios

  Scenario: Verify welcome message should not display a truncated version
    Given the user navigates to the AI Bot chat interface
    Then the welcome message should not exactly display "Welcome! I'm your AI Bot Assistant."

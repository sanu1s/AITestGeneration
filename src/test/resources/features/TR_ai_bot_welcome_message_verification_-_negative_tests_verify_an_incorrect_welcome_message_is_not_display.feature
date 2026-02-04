Feature: AI Bot Welcome Message Verification - Negative Tests

  Scenario: Verify an incorrect welcome message is not displayed
    Given User navigates to the AI Bot chat interface
    Then The welcome message should not contain "Hello, how can I help you today?"

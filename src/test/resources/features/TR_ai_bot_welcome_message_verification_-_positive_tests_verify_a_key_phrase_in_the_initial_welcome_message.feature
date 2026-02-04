Feature: AI Bot Welcome Message Verification - Positive Tests

  Scenario: Verify a key phrase in the initial welcome message
    Given User navigates to the AI Bot chat interface
    Then The welcome message should contain "I'm your AI Bot Assistant"

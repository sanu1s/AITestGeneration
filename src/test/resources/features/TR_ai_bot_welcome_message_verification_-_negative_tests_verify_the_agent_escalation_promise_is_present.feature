Feature: AI Bot Welcome Message Verification - Negative Tests

  Scenario: Verify the agent escalation promise is present
    Given User navigates to the AI Bot chat interface
    Then The welcome message should contain "connect you with an agent who can."

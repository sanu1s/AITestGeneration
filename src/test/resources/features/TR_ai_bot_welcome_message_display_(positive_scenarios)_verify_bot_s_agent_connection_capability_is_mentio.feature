Feature: AI Bot Welcome Message Display (Positive Scenarios)

  Scenario: Verify bot's agent connection capability is mentioned
    Given user navigates to the AI bot chat interface
    Then the welcome message should contain "connect you with an agent who can."

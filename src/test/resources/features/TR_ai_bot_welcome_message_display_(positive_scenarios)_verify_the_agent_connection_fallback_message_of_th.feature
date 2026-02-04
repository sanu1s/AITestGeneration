Feature: AI Bot Welcome Message Display (Positive Scenarios)

  Scenario: Verify the agent connection fallback message of the AI bot
    Given User navigates to the AI bot chat page
    Then The bot's initial message should contain "If I can't answer your question, I'll connect you with an agent who can."

Feature: AI Bot Initial Interaction - Positive Test Cases

  Scenario: Verify bot identifies itself as an assistant and mentions agent fallback
    Given the user is on the chat interface
    Then the bot's message should identify itself as "AI Bot Assistant"
    And the bot's message should mention "connect you with an agent"

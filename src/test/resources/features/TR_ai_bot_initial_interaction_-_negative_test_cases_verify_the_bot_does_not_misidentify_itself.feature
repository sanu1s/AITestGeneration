Feature: AI Bot Initial Interaction - Negative Test Cases

  Scenario: Verify the bot does not misidentify itself
    Given the user is on the chat interface
    Then the bot's message should not contain "I am a Human Agent"
    And the bot's message should not contain "I cannot help you"

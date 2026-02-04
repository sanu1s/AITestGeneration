Feature: AI Bot Initial Interaction - Negative Test Cases

  Scenario: Verify that the welcome message is not empty
    Given the user is on the chat interface
    Then the bot's message should not be empty

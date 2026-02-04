Feature: AI Bot Assistant Welcome Message Functionality - Positive Test Cases

  Scenario: Verify the bot's promise to connect to an agent is displayed
    Given the AI Bot Assistant chat interface is loaded
    Then the bot's initial message should contain "If I can't answer your question, I'll connect you with an agent who can."

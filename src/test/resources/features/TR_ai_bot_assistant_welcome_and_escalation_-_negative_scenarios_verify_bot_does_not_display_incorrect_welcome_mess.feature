Feature: AI Bot Assistant Welcome and Escalation - Negative Scenarios

  Scenario: Verify bot does not display incorrect welcome message
    Given User is on the chat interface
    Then The bot's welcome message should not be "Hello! I am a human agent."

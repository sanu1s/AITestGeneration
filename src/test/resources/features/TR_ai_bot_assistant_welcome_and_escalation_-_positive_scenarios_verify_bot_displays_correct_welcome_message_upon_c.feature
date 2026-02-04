Feature: AI Bot Assistant Welcome and Escalation - Positive Scenarios

  Scenario: Verify bot displays correct welcome message upon chat load
    Given User is on the chat interface
    Then The bot's welcome message should be "Welcome! I'm your AI Bot Assistant."

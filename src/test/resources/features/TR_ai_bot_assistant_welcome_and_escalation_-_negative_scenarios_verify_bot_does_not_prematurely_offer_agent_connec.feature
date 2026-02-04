Feature: AI Bot Assistant Welcome and Escalation - Negative Scenarios

  Scenario: Verify bot does not prematurely offer agent connection for a simple greeting
    Given User is on the chat interface
    When User sends a message "Hi"
    Then The bot should not display the agent connection offer "If I can't answer your question, I'll connect you with an agent who can."

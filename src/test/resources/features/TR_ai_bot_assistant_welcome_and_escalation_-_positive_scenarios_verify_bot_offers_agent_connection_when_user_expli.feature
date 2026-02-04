Feature: AI Bot Assistant Welcome and Escalation - Positive Scenarios

  Scenario: Verify bot offers agent connection when user explicitly asks for help
    Given User is on the chat interface
    When User sends a message "I need help, connect me to an agent"
    Then The bot should respond with "If I can't answer your question, I'll connect you with an agent who can."

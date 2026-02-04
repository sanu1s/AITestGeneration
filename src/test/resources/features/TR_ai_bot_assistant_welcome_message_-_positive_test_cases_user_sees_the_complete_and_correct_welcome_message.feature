Feature: AI Bot Assistant Welcome Message - Positive Test Cases

  Scenario: User sees the complete and correct welcome message and bot identity
    Given User navigates to the AI Bot chat interface
    Then The welcome message should display "Welcome!"
    And The bot identity should display "I'm your AI Bot Assistant."
    And The agent connection capability message should display "If I can't answer your question, I'll connect you with an agent who can."

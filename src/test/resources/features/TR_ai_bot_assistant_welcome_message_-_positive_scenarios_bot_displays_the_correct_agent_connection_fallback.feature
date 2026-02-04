Feature: AI Bot Assistant Welcome Message - Positive Scenarios

  Scenario: Bot displays the correct agent connection fallback message
    Given the user navigates to the chat application
    Then the bot message should display "If I can't answer your question, I'll connect you with an agent who can."

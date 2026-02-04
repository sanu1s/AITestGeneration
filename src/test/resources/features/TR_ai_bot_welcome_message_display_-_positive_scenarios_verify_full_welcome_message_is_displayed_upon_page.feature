Feature: AI Bot Welcome Message Display - Positive Scenarios

  Scenario: Verify full welcome message is displayed upon page load
    Given the user navigates to the AI Bot chat interface
    Then the welcome message should display "Welcome! I'm your AI Bot Assistant. If I can't answer your question, I'll connect you with an agent who can."

Feature: AI Bot Welcome Message Display (Positive)

  Scenario: Verify AI Bot displays correct welcome message on application load
    Given User navigates to the AI Bot application
    Then The welcome message area should display "Welcome! I'm your AI Bot Assistant. If I can't answer your question, I'll connect you with an agent who can."

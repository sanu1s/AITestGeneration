Feature: AI Bot Welcome Message Display (Positive Cases)

  Scenario: Verify full AI Bot welcome message is displayed
    Given User is on the application home page
    Then The status message result should display "Welcome! I'm your AI Bot Assistant. If I can't answer your question, I'll connect you with an agent who can."

Feature: AI Bot Welcome Message Display (Positive Cases)

  Scenario: Verify full welcome message is displayed on Order Tracking Page
    Given User navigates to the order tracking page
    Then The status message should display "Welcome! I'm your AI Bot Assistant. If I can't answer your question, I'll connect you with an agent who can."

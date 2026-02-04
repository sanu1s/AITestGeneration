Feature: AI Bot Introduction Message Verification - Positive Tests

  Scenario: Verify full AI Bot greeting message is displayed on page load
    Given User navigates to the AI Bot page
    Then The bot message should display "Welcome! I'm your AI Bot Assistant. If I can't answer your question, I'll connect you with an agent who can."

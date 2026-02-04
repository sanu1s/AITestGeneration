Feature: AI Bot Welcome Message Display - Negative Scenarios

  Scenario: Verify an incorrect welcome message is not displayed
    Given User navigates to the AI Bot assistant page
    Then The bot message should not display "Hello there! How can I help you today?"

Feature: AI Bot Assistant Welcome Message Display - Negative Test Cases

  Scenario: Verify an incorrect welcome message is not displayed
    Given User navigates to the AI Bot interface
    Then The bot message should not display "Hello there! How can I help you today?"

Feature: AI Bot Welcome Message Display - Negative Test Cases

  Scenario: Verify bot welcome message displays incorrect assistant name
    Given User navigates to the AI Bot chat page
    Then The bot welcome message should not contain "I'm your Human Assistant."

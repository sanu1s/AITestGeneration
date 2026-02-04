Feature: AI Bot Welcome Message Display - Negative Test Cases

  Scenario: Verify welcome message is not displayed on initial load
    Given User navigates to the AI Bot chat page
    Then The bot welcome message should not be visible

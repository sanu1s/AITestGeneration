Feature: AI Bot Welcome Message Display - Negative Scenarios

  Scenario: Verify an incorrect agent connection message is not displayed
    Given User navigates to the AI Bot assistant page
    Then The bot message should not display "I will connect you to a human if you are stuck."

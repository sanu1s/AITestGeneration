Feature: AI Bot Welcome Message Verification - Negative Scenarios

  Scenario: Verify an incorrect welcome message is not displayed
    Given User is on the AI Bot assistant page
    Then The welcome message should not display "Hello there! How can I help you today?"

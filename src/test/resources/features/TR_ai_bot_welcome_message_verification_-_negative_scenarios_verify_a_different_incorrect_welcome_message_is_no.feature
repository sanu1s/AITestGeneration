Feature: AI Bot Welcome Message Verification - Negative Scenarios

  Scenario: Verify a different incorrect welcome message is not displayed
    Given User is on the AI Bot assistant page
    Then The welcome message should not display "Welcome to our general support portal."

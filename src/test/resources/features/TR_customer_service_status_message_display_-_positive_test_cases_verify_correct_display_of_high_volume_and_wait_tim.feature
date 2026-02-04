Feature: Customer Service Status Message Display - Positive Test Cases

  Scenario: Verify correct display of high volume and wait time message
    Given User navigates to the "Support Contact" page
    Then The system status message should display "We are currently experiencing higher than normal volumes."
    And The system status message should display "The estimated wait time to connect with a care representative is about 2-3 minutes."
    And The system status message should display "Would you to hold?"

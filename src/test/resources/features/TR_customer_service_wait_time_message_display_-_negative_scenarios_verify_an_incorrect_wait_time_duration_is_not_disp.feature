Feature: Customer Service Wait Time Message Display - Negative Scenarios

  Scenario: Verify an incorrect wait time duration is not displayed
    Given User navigates to the order tracking page
    Then The status message should not display "The estimated wait time to connect with a care representative is approximately 5-10 minutes."

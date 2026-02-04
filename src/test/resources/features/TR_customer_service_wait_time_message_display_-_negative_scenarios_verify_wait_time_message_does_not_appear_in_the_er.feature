Feature: Customer Service Wait Time Message Display - Negative Scenarios

  Scenario: Verify wait time message does not appear in the error section
    Given User navigates to the order tracking page
    Then The error message should not display "We are currently experiencing higher than normal volumes. The estimated wait time to connect with a care representative is approximately 2-3 minutes. Would you to hold?"

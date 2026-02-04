Feature: Customer Service Wait Time Message Display - Positive Scenarios

  Scenario: Verify full customer service wait time message is displayed
    Given User navigates to the order tracking page
    Then The status message should display "We are currently experiencing higher than normal volumes. The estimated wait time to connect with a care representative is approximately 2-3 minutes. Would you to hold?"

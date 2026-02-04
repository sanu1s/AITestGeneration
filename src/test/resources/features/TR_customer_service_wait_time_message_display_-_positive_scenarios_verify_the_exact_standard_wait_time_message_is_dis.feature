Feature: Customer Service Wait Time Message Display - Positive Scenarios

  Scenario: Verify the exact standard wait time message is displayed
    Given User navigates to the customer service contact page
    Then The status message should display "We are currently experiencing higher than normal volumes. The estimated wait time to connect with a care representative is about 5-10 minutes. Would you to hold?"

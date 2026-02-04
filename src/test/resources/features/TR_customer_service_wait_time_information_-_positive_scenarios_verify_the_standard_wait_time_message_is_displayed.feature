Feature: Customer Service Wait Time Information - Positive Scenarios

  Scenario: Verify the standard wait time message is displayed
    Given user is on the customer service contact page
    Then the wait time message should display "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a representative is about 5-10 minutes."

Feature: Customer Service Wait Time Information - Positive Scenarios

  Scenario: Display different high volume wait time message
    Given User is on the customer service contact page
    When The system experiences very high call volume and the estimated wait time is "15-20 minutes"
    Then The wait time message should display "Due to very high demand, the estimated wait time to connect with a customer care representative is approximately 15-20 minutes."

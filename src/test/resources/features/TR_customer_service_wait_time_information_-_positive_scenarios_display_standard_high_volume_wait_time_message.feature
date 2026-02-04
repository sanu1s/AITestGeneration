Feature: Customer Service Wait Time Information - Positive Scenarios

  Scenario: Display standard high volume wait time message
    Given User is on the customer service contact page
    When The system experiences high call volume and the estimated wait time is "5-10 minutes"
    Then The wait time message should display "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a customer care representative is approximately 5-10 minutes."

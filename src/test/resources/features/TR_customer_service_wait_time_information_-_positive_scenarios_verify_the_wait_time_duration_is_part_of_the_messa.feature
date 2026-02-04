Feature: Customer Service Wait Time Information - Positive Scenarios

  Scenario: Verify the wait time duration is part of the message
    Given user is on the customer service contact page
    Then the wait time message should display "estimated wait time to connect with a representative is about 5-10 minutes."

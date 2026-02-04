Feature: Customer Service Wait Time Information - Negative Scenarios

  Scenario: Verify incorrect wait time message is not displayed
    Given user is on the customer service contact page
    Then the wait time message should not contain "estimated wait time to connect with a representative is about 2-3 minutes."

Feature: Customer Service Wait Time Message - Positive and Negative Scenarios

  Scenario: Verify individual components of the wait time message (Positive)
    Given a user is on the customer service contact page
    When the system indicates "high volume status"
    Then the system message should contain "We are currently experiencing higher than normal volumes."
    And the system message should contain "The estimated wait time is approximately 4-5 minutes."
    And the system message should contain "Would you to hold and wait for a care representative?"

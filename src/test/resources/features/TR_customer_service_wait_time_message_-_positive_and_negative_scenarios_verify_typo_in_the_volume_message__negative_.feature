Feature: Customer Service Wait Time Message - Positive and Negative Scenarios

  Scenario: Verify typo in the volume message (Negative)
    Given a user is on the customer service contact page
    When the system enters a "high volume state"
    Then the system message should not contain "We are currently experiencing higher than normal volume."

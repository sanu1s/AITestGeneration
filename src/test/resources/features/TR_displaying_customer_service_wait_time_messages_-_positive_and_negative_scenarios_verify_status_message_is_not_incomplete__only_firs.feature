Feature: Displaying Customer Service Wait Time Messages - Positive and Negative Scenarios

  Scenario: Verify status message is not incomplete (only first sentence)
    Given I am on the customer service page
    When the system experiences high call volumes
    Then the status message should NOT display "We are currently experiencing higher than normal volumes."

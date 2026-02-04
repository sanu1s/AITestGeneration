Feature: Displaying Customer Service Wait Time Messages - Positive and Negative Scenarios

  Scenario: Verify estimated wait time is displayed within the message
    Given I am on the customer service page
    When the system experiences high call volumes
    Then the status message should display the estimated wait time "20-30 minutes"

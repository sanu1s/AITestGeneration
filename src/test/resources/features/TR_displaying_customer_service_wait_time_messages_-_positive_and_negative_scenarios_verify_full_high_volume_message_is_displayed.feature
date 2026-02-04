Feature: Displaying Customer Service Wait Time Messages - Positive and Negative Scenarios

  Scenario: Verify full high volume message is displayed
    Given I am on the customer service page
    When the system experiences high call volumes
    Then the status message should display "We are currently experiencing higher than normal volumes. The estimated wait time to speak with a representative is approximately 20-30 minutes. Would you to hold?"

Feature: Customer Service Wait Time Information - Negative Scenarios

  Scenario: Verify an error message is displayed when wait time information is unavailable
    Given user is on the customer service contact page
    Then the wait time message should not display "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a representative is about 5-10 minutes."
    And the error message should display "Unable to retrieve wait time information. Please try again later."

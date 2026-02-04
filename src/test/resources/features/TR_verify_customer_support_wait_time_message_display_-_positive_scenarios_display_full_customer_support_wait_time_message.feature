Feature: Verify Customer Support Wait Time Message Display - Positive Scenarios

  Scenario: Display Full Customer Support Wait Time Message
    Given the user navigates to the customer support page
    Then the result message should display "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a customer care representative is approximately 10-20 minutes. Would you to hold?"

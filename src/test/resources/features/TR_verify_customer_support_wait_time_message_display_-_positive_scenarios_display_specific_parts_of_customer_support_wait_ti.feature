Feature: Verify Customer Support Wait Time Message Display - Positive Scenarios

  Scenario: Display Specific Parts of Customer Support Wait Time Message
    Given the user navigates to the customer support page
    Then the result message should contain "higher than normal volumes"
    And the result message should contain "estimated wait time to connect with a customer care representative is approximately 10-20 minutes."
    And the result message should contain "Would you to hold?"

Feature: Verify Customer Support Wait Time Message Display - Negative Scenarios

  Scenario: Result message does not contain incorrect wait time
    Given the user navigates to the customer support page
    Then the result message should not contain "estimated wait time of 30-40 minutes"

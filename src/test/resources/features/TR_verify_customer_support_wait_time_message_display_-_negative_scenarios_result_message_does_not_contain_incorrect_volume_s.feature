Feature: Verify Customer Support Wait Time Message Display - Negative Scenarios

  Scenario: Result message does not contain incorrect volume status
    Given the user navigates to the customer support page
    Then the result message should not contain "lower than normal volumes"

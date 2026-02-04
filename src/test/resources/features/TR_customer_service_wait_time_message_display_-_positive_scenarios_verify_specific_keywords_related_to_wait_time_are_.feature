Feature: Customer Service Wait Time Message Display - Positive Scenarios

  Scenario: Verify specific keywords related to wait time are displayed
    Given User navigates to the order tracking page
    Then The status message should display "higher than normal volumes"
    And The status message should display "2-3 minutes"

Feature: Human Assistance Request - Negative Scenarios

  Scenario: Display error when human assistance is unavailable
    Given User is on the support page during off-hours
    When User clicks the "Get a human" button
    Then An error message "Human assistance is currently unavailable. Please try again during business hours." should be displayed
    Then The current URL should be "https://example.com/support"

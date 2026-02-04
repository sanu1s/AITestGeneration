Feature: Registry Name Visibility Management - Positive and Negative Scenarios

  Scenario: Attempt to remove an empty name from the registry
    Given I am on the registry management page
    When I attempt to remove the name "" from the registry
    Then the error message should display "Name cannot be empty"

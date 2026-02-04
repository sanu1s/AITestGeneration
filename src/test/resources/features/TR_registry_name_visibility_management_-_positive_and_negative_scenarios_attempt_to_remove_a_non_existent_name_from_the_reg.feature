Feature: Registry Name Visibility Management - Positive and Negative Scenarios

  Scenario: Attempt to remove a non-existent name from the registry
    Given I am on the registry management page
    When I attempt to remove the name "NonExistent Item" from the registry
    Then the error message should display "Name not found in registry"

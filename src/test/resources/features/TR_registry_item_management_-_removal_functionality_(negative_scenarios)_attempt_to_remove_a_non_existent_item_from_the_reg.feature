Feature: Registry Item Management - Removal Functionality (Negative Scenarios)

  Scenario: Attempt to remove a non-existent item from the registry
    Given the user is logged in and on the "Registry Management" page
    When the user attempts to remove a non-existent item "Imaginary Toy"
    Then an error message "Item 'Imaginary Toy' not found in registry." should be displayed

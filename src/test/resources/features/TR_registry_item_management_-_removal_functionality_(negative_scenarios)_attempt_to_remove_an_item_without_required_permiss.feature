Feature: Registry Item Management - Removal Functionality (Negative Scenarios)

  Scenario: Attempt to remove an item without required permissions
    Given the user is logged in as a "Guest" and on the "Registry Management" page
    And the "Heirloom Blanket" is listed in the registry
    When the user clicks the "Remove" button for "Heirloom Blanket"
    Then an error message "You do not have sufficient permissions to remove this item." should be displayed

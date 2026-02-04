Feature: Registry Item Management - Removal Functionality (Positive Scenarios)

  Scenario: Successfully remove an Heirloom Blanket from the registry
    Given the user is logged in and on the "Registry Management" page
    And the "Heirloom Blanket" is listed in the registry
    When the user clicks the "Remove" button for "Heirloom Blanket"
    Then the success message "Heirloom Blanket removed successfully." should be displayed
    And the "Heirloom Blanket" should no longer be visible in the registry list

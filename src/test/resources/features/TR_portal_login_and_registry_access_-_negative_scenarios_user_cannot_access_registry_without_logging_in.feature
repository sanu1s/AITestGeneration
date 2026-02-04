Feature: Portal Login and Registry Access - Negative Scenarios

  Scenario: User cannot access registry without logging in
    Given User navigates to the portal home page
    When User attempts to navigate to the "registry" page directly
    Then User should be redirected to the login page
    And An access denied message "Please log in to access the registry." should be displayed

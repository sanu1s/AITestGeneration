Feature: User Profile Personalization - Negative Scenarios

  Scenario: Attempt to save with empty display name
    Given User is on the profile personalization page
    When User enters "" as preferred display name
    And User clicks the "Save Changes" button
    Then The error message should display "Display name cannot be empty."

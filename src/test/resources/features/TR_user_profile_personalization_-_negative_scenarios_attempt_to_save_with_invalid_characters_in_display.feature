Feature: User Profile Personalization - Negative Scenarios

  Scenario: Attempt to save with invalid characters in display name
    Given User is on the profile personalization page
    When User enters "John!Doe!" as preferred display name
    And User clicks the "Save Changes" button
    Then The error message should display "Display name contains invalid characters."

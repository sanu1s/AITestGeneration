Feature: User Profile Personalization - Positive Scenarios

  Scenario: Successfully update a different preferred display name
    Given User is on the profile personalization page
    When User enters "Bob Johnson" as preferred display name
    And User clicks the "Save Changes" button
    Then The success message should display "Profile updated successfully!"
    And The preferred display name field should show "Bob Johnson"

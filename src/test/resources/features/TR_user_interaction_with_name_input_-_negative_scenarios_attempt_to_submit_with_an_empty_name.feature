Feature: User Interaction with Name Input - Negative Scenarios

  Scenario: Attempt to submit with an empty name
    Given User is on the "greeting" page
    When User enters "" into the name field
    And User clicks the "Continue" button
    Then An error message "Name cannot be empty." should be displayed

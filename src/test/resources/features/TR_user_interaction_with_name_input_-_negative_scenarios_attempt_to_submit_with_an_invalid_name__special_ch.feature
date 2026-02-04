Feature: User Interaction with Name Input - Negative Scenarios

  Scenario: Attempt to submit with an invalid name (special characters)
    Given User is on the "greeting" page
    When User enters "John@Doe" into the name field
    And User clicks the "Continue" button
    Then An error message "Name contains invalid characters." should be displayed

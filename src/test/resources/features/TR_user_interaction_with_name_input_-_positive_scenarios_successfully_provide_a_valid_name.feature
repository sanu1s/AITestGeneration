Feature: User Interaction with Name Input - Positive Scenarios

  Scenario: Successfully provide a valid name
    Given User is on the "greeting" page
    When User enters "John Doe" into the name field
    And User clicks the "Continue" button
    Then A welcome message "Hello, John Doe! How can I assist you?" should be displayed

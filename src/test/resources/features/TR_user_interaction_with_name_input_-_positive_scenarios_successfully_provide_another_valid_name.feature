Feature: User Interaction with Name Input - Positive Scenarios

  Scenario: Successfully provide another valid name
    Given User is on the "greeting" page
    When User enters "Alice Smith" into the name field
    And User clicks the "Continue" button
    Then A welcome message "Hello, Alice Smith! How can I assist you?" should be displayed

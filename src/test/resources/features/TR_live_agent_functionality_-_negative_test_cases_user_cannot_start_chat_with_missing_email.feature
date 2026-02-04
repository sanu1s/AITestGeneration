Feature: Live Agent Functionality - Negative Test Cases

  Scenario: User cannot start chat with missing email
    Given User is on the "https://www.example.com/support" page
    When User clicks the "Live Chat" button
    And User enters "Jane Doe" in the name field
    And User enters "I need help with billing." in the query field
    And User clicks the "Start Chat" button
    Then An error message "Email is required." should be displayed

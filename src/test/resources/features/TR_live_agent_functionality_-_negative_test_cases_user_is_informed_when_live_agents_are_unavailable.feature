Feature: Live Agent Functionality - Negative Test Cases

  Scenario: User is informed when live agents are unavailable
    Given User is on the "https://www.example.com/support" page
    When User clicks the "Live Chat" button
    Then An "Agents are currently unavailable. Please try again later." message should be displayed
    And The "Start Chat" button should be disabled

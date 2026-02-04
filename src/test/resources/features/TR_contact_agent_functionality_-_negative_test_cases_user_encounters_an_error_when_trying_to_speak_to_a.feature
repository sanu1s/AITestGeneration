Feature: Contact Agent Functionality - Negative Test Cases

  Scenario: User encounters an error when trying to speak to agent due to system issues
    Given User is on the "https://www.example.com" home page
    When User clicks on "Speak to agent" button
    Then An error message should display "We are currently experiencing technical difficulties. Please try again later."

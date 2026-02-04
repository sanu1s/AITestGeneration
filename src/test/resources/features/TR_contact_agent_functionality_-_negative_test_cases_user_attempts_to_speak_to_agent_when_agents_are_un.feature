Feature: Contact Agent Functionality - Negative Test Cases

  Scenario: User attempts to speak to agent when agents are unavailable
    Given User is on the "https://www.example.com" home page
    When User clicks on "Speak to agent" button
    Then An information message should display "Our agents are currently unavailable. Please try again during business hours."

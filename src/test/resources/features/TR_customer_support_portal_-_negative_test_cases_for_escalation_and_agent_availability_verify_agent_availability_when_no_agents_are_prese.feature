Feature: Customer Support Portal - Negative Test Cases for Escalation and Agent Availability

  Scenario: Verify agent availability when no agents are present
    Given User is on the Customer Support Portal
    When User clicks the "Check Agent Availability" button
    Then The availability status should display "No agents are currently available. Please try again later."

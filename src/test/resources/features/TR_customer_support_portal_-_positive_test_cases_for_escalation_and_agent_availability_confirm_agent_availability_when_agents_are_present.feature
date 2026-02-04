Feature: Customer Support Portal - Positive Test Cases for Escalation and Agent Availability

  Scenario: Confirm agent availability when agents are present
    Given User is on the Customer Support Portal
    When User clicks the "Check Agent Availability" button
    Then The availability status should display "An agent is available to help you now."

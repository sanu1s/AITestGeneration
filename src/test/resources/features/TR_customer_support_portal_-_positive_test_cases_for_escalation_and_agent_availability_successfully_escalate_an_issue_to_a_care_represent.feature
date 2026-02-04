Feature: Customer Support Portal - Positive Test Cases for Escalation and Agent Availability

  Scenario: Successfully escalate an issue to a care representative
    Given User is on the Customer Support Portal
    When User clicks the "Escalate Issue" button
    Then A success message "Your request has been sent to a care representative." should be displayed

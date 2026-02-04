Feature: Customer Support Portal - Negative Test Cases for Escalation and Agent Availability

  Scenario: Attempt to escalate an already resolved issue
    Given User is on the Customer Support Portal
    When User selects issue status as "already resolved"
    And User clicks the "Escalate Issue" button
    Then An error message "This issue cannot be escalated." should be displayed

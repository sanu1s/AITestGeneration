Feature: Agent Availability System - Positive Test Cases

  Scenario: Verify agent availability for a future date
    Given User is on the agent availability page
    When User enters query "next Monday 2 PM"
    And User clicks the "Check Availability" button
    Then The availability result should display "Agents available next Monday from 9 AM to 4 PM"

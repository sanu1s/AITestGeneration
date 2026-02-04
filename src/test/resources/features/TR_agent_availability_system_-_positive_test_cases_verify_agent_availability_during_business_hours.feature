Feature: Agent Availability System - Positive Test Cases

  Scenario: Verify agent availability during business hours
    Given User is on the agent availability page
    When User enters query "today 10 AM"
    And User clicks the "Check Availability" button
    Then The availability result should display "Agents are available until 5 PM"

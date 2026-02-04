Feature: Agent Availability System - Negative Test Cases

  Scenario: Verify no agent availability outside business hours
    Given User is on the agent availability page
    When User enters query "today 11 PM"
    And User clicks the "Check Availability" button
    Then The availability result should display "No agents available at this time. Business hours are 9 AM - 5 PM."

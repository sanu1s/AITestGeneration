Feature: Agent Availability System - Negative Test Cases

  Scenario: Verify error for invalid availability query
    Given User is on the agent availability page
    When User enters query "invalid input xyz"
    And User clicks the "Check Availability" button
    Then The error message should display "Invalid query format. Please enter a valid date and time."

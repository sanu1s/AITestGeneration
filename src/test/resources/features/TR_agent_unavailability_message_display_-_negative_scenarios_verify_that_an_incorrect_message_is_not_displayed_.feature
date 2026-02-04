Feature: Agent Unavailability Message Display - Negative Scenarios

  Scenario: Verify that an incorrect message is not displayed when agents are unavailable
    Given User navigates to the "Customer Support" page
    When User clicks the "Start Chat" button
    Then The error message should not display "Agents are currently online."

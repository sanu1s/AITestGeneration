Feature: Agent Availability Outside Business Hours - Negative Scenarios

  Scenario: Verify Agent Unavailability Message on Direct Help Page Access
    Given User navigates to the "Help" page
    Then The agent availability message should display "It looks we’re currently outside of our business hours, so no agents are available right now."

Feature: Agent Availability Outside Business Hours - Negative Scenarios

  Scenario: Verify Agent Unavailability Message When Attempting to Contact Support
    Given User is on the Order Tracking page
    When User clicks the "Contact Support" button
    Then The agent availability message should display "It looks we’re currently outside of our business hours, so no agents are available right now."

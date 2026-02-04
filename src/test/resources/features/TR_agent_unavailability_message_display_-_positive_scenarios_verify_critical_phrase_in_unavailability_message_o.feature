Feature: Agent Unavailability Message Display - Positive Scenarios

  Scenario: Verify critical phrase in unavailability message on contact attempt
    Given User navigates to the "Customer Support" page
    When User clicks the "Start Chat" button
    Then The error message should contain "no agents are available at the moment"

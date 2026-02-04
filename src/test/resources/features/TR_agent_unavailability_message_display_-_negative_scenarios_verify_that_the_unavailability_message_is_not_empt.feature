Feature: Agent Unavailability Message Display - Negative Scenarios

  Scenario: Verify that the unavailability message is not empty when agents are unavailable
    Given User navigates to the "Customer Support" page
    When User clicks the "Start Chat" button
    Then The error message should not be empty

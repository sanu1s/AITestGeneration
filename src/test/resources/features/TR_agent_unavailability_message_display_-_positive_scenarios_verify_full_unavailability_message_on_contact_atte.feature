Feature: Agent Unavailability Message Display - Positive Scenarios

  Scenario: Verify full unavailability message on contact attempt
    Given User navigates to the "Customer Support" page
    When User clicks the "Start Chat" button
    Then The error message should display "I understand how frustrating this situation may be. Unfortunately, we are currently experiencing higher than normal volumes, and no agents are available at the moment."

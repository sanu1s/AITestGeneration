Feature: Agent Interaction - Positive Scenarios

  Scenario: Successfully connect to an agent
    Given User is on the support page
    When User clicks the "Speak to Agent" button
    Then The system should initiate contact with an agent and display "Connecting to an agent..."

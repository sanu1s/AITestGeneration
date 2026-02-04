Feature: Agent Escalation - Negative Scenarios

  Scenario: User requests agent but no agent is available
    Given User is on the support chat page
    And The system displays the message "Thanks for your patience, this looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
    When User indicates they want agent assistance by clicking "Yes"
    Then The system should display a checking message "Checking agent availability..."
    And The system should display an error message "No agents are currently available. Please try again later."

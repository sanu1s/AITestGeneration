Feature: Agent Escalation - Negative Scenarios

  Scenario: User declines agent assistance
    Given User is on the support chat page
    And The system displays the message "Thanks for your patience, this looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
    When User indicates they do not want agent assistance by clicking "No"
    Then The system should display a cancellation message "Agent assistance declined."
    And The system should display a follow-up message "Is there anything else I can help you with?"

Feature: Agent Escalation - Positive Scenarios

  Scenario: User successfully connects with an agent by clicking Yes
    Given User is on the support chat page
    And The system displays the message "Thanks for your patience, this looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
    When User indicates they want agent assistance by clicking "Yes"
    Then The system should display a connecting message "Connecting you with an agent..."
    And The system should display a confirmation message "You are now connected with a care representative."

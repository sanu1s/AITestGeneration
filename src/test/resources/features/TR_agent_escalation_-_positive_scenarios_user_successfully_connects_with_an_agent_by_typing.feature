Feature: Agent Escalation - Positive Scenarios

  Scenario: User successfully connects with an agent by typing 'yes please'
    Given User is on the support chat page
    And The system displays the message "Thanks for your patience, this looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
    When User indicates they want agent assistance by typing "yes please"
    And User clicks the "Send" button
    Then The system should display a connecting message "Checking agent availability..."
    And The system should display a confirmation message "Agent found, connecting you now."

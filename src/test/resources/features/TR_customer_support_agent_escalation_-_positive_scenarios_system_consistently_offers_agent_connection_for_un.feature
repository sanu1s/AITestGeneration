Feature: Customer Support Agent Escalation - Positive Scenarios

  Scenario: System consistently offers agent connection for unresolved issues
    Given the user is engaged in a support chat session
    When the system determines it cannot resolve the user's issue automatically
    Then the system should display the message "Thanks for your patience, this looks something a care representative is better suited to handle."
    And the system should display the prompt "May I check if an agent is available to help you?"

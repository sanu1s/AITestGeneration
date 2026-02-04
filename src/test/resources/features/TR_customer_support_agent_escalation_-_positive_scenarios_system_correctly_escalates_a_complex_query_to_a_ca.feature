Feature: Customer Support Agent Escalation - Positive Scenarios

  Scenario: System correctly escalates a complex query to a care representative
    Given the user is on the customer support chat page
    When the user sends a query that requires agent assistance
    Then the system should display the message "Thanks for your patience, this looks something a care representative is better suited to handle."
    And the system should display the prompt "May I check if an agent is available to help you?"

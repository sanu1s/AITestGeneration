Feature: Customer Support Agent Escalation - Positive Scenarios

  Scenario: System suggests agent for complex damaged order query
    Given User is on the support chat page
    When User types "My recent order was damaged and I want a full refund, what should I do?" into the chat input
    And User clicks the send button
    Then The chat should display the message "This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"

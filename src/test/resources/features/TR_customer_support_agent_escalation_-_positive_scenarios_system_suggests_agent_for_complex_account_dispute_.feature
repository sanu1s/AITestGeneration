Feature: Customer Support Agent Escalation - Positive Scenarios

  Scenario: System suggests agent for complex account dispute query
    Given User is on the support chat page
    When User types "I need to dispute a charge on my account and understand the process" into the chat input
    And User clicks the send button
    Then The chat should display the message "This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"

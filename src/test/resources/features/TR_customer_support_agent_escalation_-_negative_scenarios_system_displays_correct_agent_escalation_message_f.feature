Feature: Customer Support Agent Escalation - Negative Scenarios

  Scenario: System displays correct agent escalation message for critical query
    Given User is on the support chat page
    When User types "I want to close my account immediately" into the chat input
    And User clicks the send button
    Then The chat should not display a message containing "I am just a bot and cannot help with that."
    And The chat should display the message "This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"

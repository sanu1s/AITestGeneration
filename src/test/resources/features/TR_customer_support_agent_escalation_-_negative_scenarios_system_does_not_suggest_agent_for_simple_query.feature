Feature: Customer Support Agent Escalation - Negative Scenarios

  Scenario: System does not suggest agent for simple query
    Given User is on the support chat page
    When User types "What are your operating hours?" into the chat input
    And User clicks the send button
    Then The chat should not display the message "This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
    And The chat should display a message containing "Our operating hours are Monday to Friday, 9 AM to 5 PM."

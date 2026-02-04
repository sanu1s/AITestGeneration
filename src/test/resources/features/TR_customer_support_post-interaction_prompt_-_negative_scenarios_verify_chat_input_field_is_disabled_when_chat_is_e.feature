Feature: Customer Support Post-Interaction Prompt - Negative Scenarios

  Scenario: Verify chat input field is disabled when chat is explicitly ended by agent
    Given User is on the customer support chat page
    And the chat session has been explicitly ended by the agent
    Then the message "Is there anything else I can assist you with today?" should be visible
    And the chat input field should be disabled

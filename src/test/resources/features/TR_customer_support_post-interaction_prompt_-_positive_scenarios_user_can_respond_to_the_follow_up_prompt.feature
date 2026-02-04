Feature: Customer Support Post-Interaction Prompt - Positive Scenarios

  Scenario: User can respond to the follow-up prompt
    Given User is on the customer support chat page and the follow-up prompt is displayed
    When User types "Yes, I have another question" into the chat input field
    And User clicks the send button
    Then the message "Yes, I have another question" should appear in the chat history

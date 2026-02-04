Feature: Live Agent Chat Functionality - Positive Scenarios

  Scenario: User sends another message after initial contact
    Given User has an active chat session and system message 'Connecting you to an agent...' is displayed
    When User types 'My order number is ORD78901' into the chat input field
    And User clicks the 'Send' button
    Then The chat window should display the message 'My order number is ORD78901'

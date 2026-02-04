Feature: Customer Service Chat Handover Functionality - Negative Test Cases

  Scenario: Verify absence of 'digital assistant stepping away' message on failed assignment
    Given user is on the customer service chat page "https://example.com/chat"
    When the system attempts to assign a care representative but fails
    Then the chat history should NOT display the message "The digital assistant is stepping away to allow them to take over."

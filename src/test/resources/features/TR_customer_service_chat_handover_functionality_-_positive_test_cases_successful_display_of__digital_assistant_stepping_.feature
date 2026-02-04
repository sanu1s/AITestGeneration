Feature: Customer Service Chat Handover Functionality - Positive Test Cases

  Scenario: Successful display of 'digital assistant stepping away' message
    Given user is on the customer service chat page "https://example.com/chat"
    When a care representative is assigned to the conversation
    Then the chat history should display the message "The digital assistant is stepping away to allow them to take over."

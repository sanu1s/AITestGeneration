Feature: Customer Service Chat Handover Functionality - Positive Test Cases

  Scenario: Successful display of 'representative joining' message
    Given user is on the customer service chat page "https://example.com/chat"
    When a care representative is assigned to the conversation
    Then the chat history should display the message "A care representative is joining now to continue the conversation."

Feature: Chat Queue Information Display - Positive Test Cases

  Scenario: User receives correct queue position, wait time, and prompt
    Given User is on the chat support page
    When User initiates a chat
    Then The chat system displays the full queue message and prompt "There are currently 3 chats ahead of you, and the estimated wait time is about 2-3 minutes. Would you to hold and be transferred to a care representative?"

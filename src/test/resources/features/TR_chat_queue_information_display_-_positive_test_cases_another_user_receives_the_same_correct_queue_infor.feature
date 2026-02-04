Feature: Chat Queue Information Display - Positive Test Cases

  Scenario: Another user receives the same correct queue information and prompt
    Given User has requested chat support
    When The chat system processes the request
    Then The queue message and prompt should state "There are currently 3 chats ahead of you, and the estimated wait time is about 2-3 minutes. Would you to hold and be transferred to a care representative?"

Feature: Chat Inactivity Message - Negative Scenarios

  Scenario: System message does not contain unexpected promotional text
    Given User is on the chat application page
    When The chat system triggers an inactivity closure message
    Then The chat message display area should not contain the phrase "Buy now and get 20% off!"

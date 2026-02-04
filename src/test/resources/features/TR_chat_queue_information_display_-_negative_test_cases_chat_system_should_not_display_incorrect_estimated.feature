Feature: Chat Queue Information Display - Negative Test Cases

  Scenario: Chat system should NOT display incorrect estimated wait time
    Given User is on the chat support page
    When User initiates a chat
    Then The chat system should NOT display "estimated wait time is about 5-10 minutes"

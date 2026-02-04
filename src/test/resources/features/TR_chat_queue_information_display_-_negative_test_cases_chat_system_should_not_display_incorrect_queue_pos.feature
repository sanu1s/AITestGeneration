Feature: Chat Queue Information Display - Negative Test Cases

  Scenario: Chat system should NOT display incorrect queue position
    Given User is on the chat support page
    When User initiates a chat
    Then The chat system should NOT display "There are currently 1 chat ahead of you"

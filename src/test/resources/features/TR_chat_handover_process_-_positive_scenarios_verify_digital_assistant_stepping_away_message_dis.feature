Feature: Chat Handover Process - Positive Scenarios

  Scenario: Verify Digital Assistant Stepping Away Message Display
    Given user is on the chat interface
    When the chat system has performed a handover
    Then the chat message area should display "The digital assistant is stepping away to allow them to take over."

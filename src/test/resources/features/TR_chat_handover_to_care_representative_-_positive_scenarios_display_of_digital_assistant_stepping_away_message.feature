Feature: Chat Handover to Care Representative - Positive Scenarios

  Scenario: Display of Digital Assistant Stepping Away Message
    Given a chat session is active and a handover is initiated
    Then the chat message "The digital assistant is stepping away to allow them to take over." should be displayed

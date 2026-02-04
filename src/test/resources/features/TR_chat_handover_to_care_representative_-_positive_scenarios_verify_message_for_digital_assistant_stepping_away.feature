Feature: Chat Handover to Care Representative - Positive Scenarios

  Scenario: Verify message for digital assistant stepping away
    Given User is on the chat interface
    When The chat system confirms digital assistant departure
    Then The status message should display "The digital assistant is stepping away to allow them to take over."

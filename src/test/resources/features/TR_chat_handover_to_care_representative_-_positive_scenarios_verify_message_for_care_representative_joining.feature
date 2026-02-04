Feature: Chat Handover to Care Representative - Positive Scenarios

  Scenario: Verify message for care representative joining
    Given User is on the chat interface
    When The chat system announces a handover
    Then The status message should display "A care representative is joining now to continue the conversation."

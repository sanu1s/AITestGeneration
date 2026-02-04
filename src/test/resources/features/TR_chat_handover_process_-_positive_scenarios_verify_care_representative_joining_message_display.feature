Feature: Chat Handover Process - Positive Scenarios

  Scenario: Verify Care Representative Joining Message Display
    Given user is on the chat interface
    When the chat system has performed a handover
    Then the chat message area should display "A care representative is joining now to continue the conversation."

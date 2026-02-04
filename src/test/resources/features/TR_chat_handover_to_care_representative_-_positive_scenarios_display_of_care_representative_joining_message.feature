Feature: Chat Handover to Care Representative - Positive Scenarios

  Scenario: Display of Care Representative Joining Message
    Given a chat session is active and a handover is initiated
    Then the chat message "A care representative is joining now to continue the conversation." should be displayed

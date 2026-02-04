Feature: Chat Handover Notifications - Positive Scenarios

  Scenario: Verify Care Representative Joining Notification Display
    Given User is on the chat interface
    When A care representative joins the chat
    Then The system message "A care representative is joining now to continue the conversation." should be displayed

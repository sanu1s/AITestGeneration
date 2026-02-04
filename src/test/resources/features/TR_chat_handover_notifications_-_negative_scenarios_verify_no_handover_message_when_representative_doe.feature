Feature: Chat Handover Notifications - Negative Scenarios

  Scenario: Verify No Handover Message When Representative Does Not Join
    Given User is on the chat interface
    When A care representative does not join the chat
    Then The system message "A care representative is joining now to continue the conversation." should NOT be displayed

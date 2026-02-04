Feature: Handoff from Digital Assistant to Care Representative - Positive Scenarios

  Scenario: Verify Care Representative Joining Message
    Given the user is on the chat page
    When a care representative joins the conversation
    Then the message "A care representative is joining now to continue the conversation." should be displayed

Feature: Conversation Handover from Digital Assistant to Care Representative - Negative Cases

  Scenario: Handover Message Not Displayed on Representative Join
    Given a user is on the chat application page
    And the digital assistant's status is "Active"
    When a care representative joins without a handover event
    Then the system message "A care representative is joining now to continue the conversation." should not be displayed
    And the digital assistant's status should remain "Active"

Feature: Conversation Handover from Digital Assistant to Care Representative - Positive Cases

  Scenario: Successful Handover and Message Display
    Given a user is on the chat application page
    And the digital assistant's status is "Active"
    When a care representative joins the conversation
    Then the system message "A care representative is joining now to continue the conversation." should be displayed
    And the system message "The digital assistant is stepping away to allow them to take over." should be displayed
    And the digital assistant's status should change to "Inactive"
    And the care representative's status should change to "Active"

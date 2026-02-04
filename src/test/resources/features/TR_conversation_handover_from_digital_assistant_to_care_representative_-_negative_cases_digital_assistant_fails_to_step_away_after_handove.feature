Feature: Conversation Handover from Digital Assistant to Care Representative - Negative Cases

  Scenario: Digital Assistant Fails to Step Away After Handover Initiation
    Given a user is on the chat application page
    And the digital assistant's status is "Active"
    When the handover process is initiated
    Then the system message "The digital assistant is stepping away to allow them to take over." should not be displayed
    And the digital assistant's status should remain "Active"
    And the care representative's status should not be "Active"

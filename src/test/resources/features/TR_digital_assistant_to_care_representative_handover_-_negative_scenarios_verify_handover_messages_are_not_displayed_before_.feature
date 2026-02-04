Feature: Digital Assistant to Care Representative Handover - Negative Scenarios

  Scenario: Verify handover messages are not displayed before handover initiation
    Given User is on the chat interface before handover
    When No handover has been initiated by the digital assistant
    Then The system message "A care representative is joining now to continue the conversation." should not be visible
    And The system message "The digital assistant is stepping away to allow them to take over." should not be visible

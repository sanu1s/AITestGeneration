Feature: Handover Process - Positive Scenarios

  Scenario: Verify message when Digital Assistant steps away from the conversation
    Given a care representative has successfully joined the conversation
    When the digital assistant completes its handover process
    Then the message "The digital assistant is stepping away to allow them to take over." should be displayed

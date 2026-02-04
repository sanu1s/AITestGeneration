Feature: Handover Process - Positive Scenarios

  Scenario: Verify message when Care Representative joins the conversation
    Given the system is in a state ready for a handover
    When a care representative becomes available and joins
    Then the message "A care representative is joining now to continue the conversation." should be displayed

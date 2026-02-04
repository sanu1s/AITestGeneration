Feature: Digital Assistant Handoff to Care Representative - Positive Scenarios

  Scenario: Verify digital assistant stepping away message is displayed
    Given a handoff to a care representative is in progress
    When the digital assistant steps away from the conversation
    Then the system should display the message "The digital assistant is stepping away to allow them to take over."

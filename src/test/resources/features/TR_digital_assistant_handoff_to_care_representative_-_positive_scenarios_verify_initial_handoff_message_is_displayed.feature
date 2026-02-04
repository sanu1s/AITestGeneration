Feature: Digital Assistant Handoff to Care Representative - Positive Scenarios

  Scenario: Verify initial handoff message is displayed
    Given the user is on the chat application page
    When the digital assistant initiates a handoff to a care representative
    Then the system should display the message "A care representative is joining now to continue the conversation."

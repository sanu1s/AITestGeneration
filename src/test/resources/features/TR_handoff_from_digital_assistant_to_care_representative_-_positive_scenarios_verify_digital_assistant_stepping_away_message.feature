Feature: Handoff from Digital Assistant to Care Representative - Positive Scenarios

  Scenario: Verify Digital Assistant Stepping Away Message
    Given the user is on the chat page
    When the digital assistant steps away from the conversation
    Then the message "The digital assistant is stepping away to allow them to take over." should be displayed

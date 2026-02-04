Feature: Handoff from Digital Assistant to Care Representative - Positive Scenarios

  Scenario: Verify successful handoff messages are displayed
    Given the user is on the chat support page
    When the digital assistant initiates a handoff to a live agent
    Then the chat window should display the message "A care representative is joining now to continue the conversation."
    And the chat window should display the message "The digital assistant is stepping away to allow them to take over."

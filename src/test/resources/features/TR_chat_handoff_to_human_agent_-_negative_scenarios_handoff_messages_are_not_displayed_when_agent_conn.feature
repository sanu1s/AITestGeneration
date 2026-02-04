Feature: Chat Handoff to Human Agent - Negative Scenarios

  Scenario: Handoff messages are not displayed when agent connection fails
    Given User is on the chat support page
    When A care representative fails to join the conversation
    Then The message "A care representative is joining now to continue the conversation." should not be displayed
    And The message "The digital assistant is stepping away to allow them to take over." should not be displayed
    And The digital assistant indicator should still be visible
    And A human agent indicator should not be visible

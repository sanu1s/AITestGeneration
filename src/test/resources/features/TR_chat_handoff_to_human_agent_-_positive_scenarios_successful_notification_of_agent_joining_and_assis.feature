Feature: Chat Handoff to Human Agent - Positive Scenarios

  Scenario: Successful notification of agent joining and assistant stepping away
    Given User is on the chat support page
    When A care representative joins the conversation
    Then The message "A care representative is joining now to continue the conversation." should be displayed
    And The message "The digital assistant is stepping away to allow them to take over." should be displayed
    And The digital assistant indicator should no longer be visible
    And A human agent indicator should be visible

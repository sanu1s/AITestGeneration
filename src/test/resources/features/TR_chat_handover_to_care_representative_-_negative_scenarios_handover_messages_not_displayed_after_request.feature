Feature: Chat Handover to Care Representative - Negative Scenarios

  Scenario: Handover Messages Not Displayed After Request
    Given the user is on the chat support page
    When the user requests to speak with a human agent
    Then the message "A care representative is joining now to continue the conversation." should not be displayed
    And the message "The digital assistant is stepping away to allow them to take over." should not be displayed

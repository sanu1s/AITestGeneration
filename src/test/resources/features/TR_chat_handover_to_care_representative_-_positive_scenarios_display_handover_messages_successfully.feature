Feature: Chat Handover to Care Representative - Positive Scenarios

  Scenario: Display Handover Messages Successfully
    Given the user is on the chat support page
    When the user requests to speak with a human agent
    Then the message "A care representative is joining now to continue the conversation." should be displayed
    And the message "The digital assistant is stepping away to allow them to take over." should be displayed

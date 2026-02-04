Feature: Chat Handoff to Human Agent - Positive Scenarios

  Scenario: Successful handoff with specific agent name displayed
    Given User is on the chat support page
    When A care representative named "Jane Doe" joins the conversation
    Then The message "A care representative is joining now to continue the conversation." should be displayed
    And The message "The digital assistant is stepping away to allow them to take over." should be displayed
    And The human agent name "Jane Doe" should be visible in the chat interface
    And The digital assistant indicator should no longer be visible

Feature: Chat Handoff to Human Agent - Negative Scenarios

  Scenario: Digital assistant remains active despite attempted handoff
    Given User is on the chat support page
    When An attempted handoff to a human agent occurs but fails to complete
    Then The digital assistant indicator should still be visible
    And A human agent indicator should not be visible
    And No message related to agent joining should be displayed

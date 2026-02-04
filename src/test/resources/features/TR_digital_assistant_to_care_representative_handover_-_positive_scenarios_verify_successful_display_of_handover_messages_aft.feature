Feature: Digital Assistant to Care Representative Handover - Positive Scenarios

  Scenario: Verify successful display of handover messages after assistant steps away
    Given User is on the chat interface
    When The digital assistant initiates handover to a care representative
    Then The system message "A care representative is joining now to continue the conversation." should be visible
    And The system message "The digital assistant is stepping away to allow them to take over." should be visible

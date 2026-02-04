Feature: Chat Handover Notifications - Negative Scenarios

  Scenario: Verify No Stepping Away Message When Handover Fails
    Given User is on the chat interface
    When The digital assistant does not step away
    Then The system message "The digital assistant is stepping away to allow them to take over." should NOT be displayed

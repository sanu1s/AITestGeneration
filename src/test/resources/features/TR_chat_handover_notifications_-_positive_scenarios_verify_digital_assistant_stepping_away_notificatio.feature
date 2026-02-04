Feature: Chat Handover Notifications - Positive Scenarios

  Scenario: Verify Digital Assistant Stepping Away Notification Display
    Given User is on the chat interface
    When The digital assistant is stepping away
    Then The system message "The digital assistant is stepping away to allow them to take over." should be displayed

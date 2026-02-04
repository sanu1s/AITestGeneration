Feature: Chat Inactivity Functionality - Negative Test Cases

  Scenario: Inactivity message is not displayed prematurely in an active session
    Given a user navigates to the "active" chat page
    Then the chat inactivity prompt should not be visible
    And the chat status message should not display "Inactive"

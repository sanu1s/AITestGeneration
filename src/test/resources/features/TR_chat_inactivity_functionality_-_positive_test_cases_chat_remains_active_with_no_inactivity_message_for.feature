Feature: Chat Inactivity Functionality - Positive Test Cases

  Scenario: Chat remains active with no inactivity message for active session
    Given a user navigates to the "active" chat page
    Then the chat status message should display "Active"
    And the chat inactivity prompt should not be visible
    And the chat input field should be enabled

Feature: Chat Inactivity Functionality - Positive Test Cases

  Scenario: Display of inactivity state and message
    Given a user navigates to the "inactive" chat page
    Then the chat status message should display "Inactive"
    And the chat inactivity prompt should display "Chat has become inactive. Please check back if you have any questions."
    And the chat input field should be disabled

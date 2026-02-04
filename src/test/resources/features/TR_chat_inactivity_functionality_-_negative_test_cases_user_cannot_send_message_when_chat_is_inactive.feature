Feature: Chat Inactivity Functionality - Negative Test Cases

  Scenario: User cannot send message when chat is inactive
    Given a user navigates to the "inactive" chat page
    When the user attempts to type "Hello, are you there?" into the chat input field
    Then the chat input field should remain empty
    And the send chat button should be disabled

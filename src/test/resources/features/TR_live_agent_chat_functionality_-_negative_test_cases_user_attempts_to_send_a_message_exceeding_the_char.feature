Feature: Live Agent Chat Functionality - Negative Test Cases

  Scenario: User attempts to send a message exceeding the character limit
    Given User navigates to the "https://example.com/support" page
    And User clicks the "Live Chat" button
    When User types a message longer than "250" characters into the chat input
    And User clicks the "Send" button
    Then The error message "Message exceeds character limit of 250." should be displayed
    And The chat history should not display the oversized message

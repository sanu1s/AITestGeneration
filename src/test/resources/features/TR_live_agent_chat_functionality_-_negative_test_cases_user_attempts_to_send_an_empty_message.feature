Feature: Live Agent Chat Functionality - Negative Test Cases

  Scenario: User attempts to send an empty message
    Given User navigates to the "https://example.com/support" page
    And User clicks the "Live Chat" button
    When User types "" into the chat input
    And User clicks the "Send" button
    Then The error message "Message cannot be empty." should be displayed
    And The chat history should not display an empty message

Feature: Live Agent Chat Functionality - Negative Scenarios

  Scenario: User attempts to send an empty message
    Given User navigates to the homepage
    When User clicks on the 'Live Chat' button
    And User clicks the 'Send' button without typing any message
    Then The chat input field should remain empty
    And An error message 'Please enter a message' should be displayed in the chat interface

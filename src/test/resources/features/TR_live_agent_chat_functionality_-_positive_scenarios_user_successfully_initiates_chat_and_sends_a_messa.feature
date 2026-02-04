Feature: Live Agent Chat Functionality - Positive Scenarios

  Scenario: User successfully initiates chat and sends a message
    Given User navigates to the homepage
    When User clicks on the 'Live Chat' button
    And User types 'I need help with my order' into the chat input field
    And User clicks the 'Send' button
    Then The chat window should display the message 'I need help with my order'
    And The chat window should display a system message 'Connecting you to an agent...'

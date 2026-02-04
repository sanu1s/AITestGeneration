Feature: Live Agent Chat Functionality - Negative Scenarios

  Scenario: Chat window closes unexpectedly after sending a message
    Given User has an active chat session and has sent 'Hello, is anyone there?'
    When The chat window is unexpectedly closed by the system
    Then The 'Live Chat' button should be visible again
    And The chat history should be cleared or a message 'Chat session ended' should be displayed

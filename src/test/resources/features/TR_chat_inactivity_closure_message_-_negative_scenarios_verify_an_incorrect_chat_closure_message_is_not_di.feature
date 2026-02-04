Feature: Chat Inactivity Closure Message - Negative Scenarios

  Scenario: Verify an incorrect chat closure message is not displayed on closure page
    Given User is on the chat closure page
    Then the chat message area should not display "Chat session has ended."
    And the chat message area should display "Due to no response, I will have to close this chat."

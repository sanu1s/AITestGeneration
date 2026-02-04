Feature: Chat Inactivity Closure Message - Negative Scenarios

  Scenario: Verify agent closure message is not displayed on an active chat page
    Given User navigates to the active chat URL "https://example.com/chat/active"
    Then the chat message area should not display "Due to no response, I will have to close this chat."

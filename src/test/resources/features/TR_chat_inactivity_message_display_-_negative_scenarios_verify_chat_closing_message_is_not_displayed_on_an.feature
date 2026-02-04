Feature: Chat Inactivity Message Display - Negative Scenarios

  Scenario: Verify chat closing message is not displayed on an active chat page
    Given User is on the chat page with an active session
    When The page finishes loading
    Then The status message should not display "Due to no response, I will have to close this chat."

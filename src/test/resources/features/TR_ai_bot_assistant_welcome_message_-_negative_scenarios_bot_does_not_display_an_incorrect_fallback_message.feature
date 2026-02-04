Feature: AI Bot Assistant Welcome Message - Negative Scenarios

  Scenario: Bot does not display an incorrect fallback message
    Given the user navigates to the chat application
    Then the bot message should not contain "I will not help you with complex questions."

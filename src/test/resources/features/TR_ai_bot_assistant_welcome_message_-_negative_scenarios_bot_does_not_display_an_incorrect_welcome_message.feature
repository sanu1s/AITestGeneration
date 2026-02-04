Feature: AI Bot Assistant Welcome Message - Negative Scenarios

  Scenario: Bot does not display an incorrect welcome message
    Given the user navigates to the chat application
    Then the bot message should not contain "Hello there! I am your assistant."

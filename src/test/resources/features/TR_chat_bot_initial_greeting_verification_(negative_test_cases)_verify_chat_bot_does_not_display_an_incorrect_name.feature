Feature: Chat Bot Initial Greeting Verification (Negative Test Cases)

  Scenario: Verify chat bot does not display an incorrect name in the greeting
    Given User navigates to the chat support page
    Then The chat bot message should not contain "My name is John"

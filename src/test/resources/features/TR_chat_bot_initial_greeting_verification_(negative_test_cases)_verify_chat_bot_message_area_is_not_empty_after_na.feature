Feature: Chat Bot Initial Greeting Verification (Negative Test Cases)

  Scenario: Verify chat bot message area is not empty after navigation
    Given User navigates to the chat support page
    Then The chat bot message area should not be empty

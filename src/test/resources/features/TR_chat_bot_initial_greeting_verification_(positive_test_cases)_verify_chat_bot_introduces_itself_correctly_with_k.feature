Feature: Chat Bot Initial Greeting Verification (Positive Test Cases)

  Scenario: Verify chat bot introduces itself correctly with key details
    Given User navigates to the chat support page
    Then The chat bot message should contain "My name is Jennifer"
    And The chat bot message should contain "OwnCompany customer service chat associate"

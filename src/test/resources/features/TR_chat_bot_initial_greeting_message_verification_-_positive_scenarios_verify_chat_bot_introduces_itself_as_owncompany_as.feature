Feature: Chat Bot Initial Greeting Message Verification - Positive Scenarios

  Scenario: Verify chat bot introduces itself as OwnCompany associate
    Given User navigates to the chat support page
    Then The chat bot message should contain "OwnCompany customer service chat associate"

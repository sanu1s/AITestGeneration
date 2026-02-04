Feature: Chat Greeting Display - Negative Scenarios

  Scenario: Verify an incorrect associate name is not displayed in the greeting
    Given User navigates to the customer service chat page
    When the chat widget loads
    Then the chat message area should not contain "My name is John"

Feature: Chat Greeting Display - Negative Scenarios

  Scenario: Verify a crucial identifying part of the greeting is not missing (e.g., company name)
    Given User navigates to the customer service chat page
    When the chat widget loads
    Then the chat message area should not contain "I'll be the customer service chat associate assisting you today."

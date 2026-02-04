Feature: Chat Greeting Display - Positive Scenarios

  Scenario: Verify the chat associate's name is correctly mentioned in the greeting
    Given User navigates to the customer service chat page
    When the chat widget loads
    Then the chat message area should contain "My name is Lesley"

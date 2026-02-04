Feature: Chat Greeting Display - Positive Scenarios

  Scenario: Verify the full initial chat greeting message is displayed
    Given User navigates to the customer service chat page
    When the chat widget loads
    Then the chat message area should display "Hello! My name is Lesley, and I'll be the OwnCompany customer service chat associate assisting you today. May I please ask who I have the pleasure of speaking with?"

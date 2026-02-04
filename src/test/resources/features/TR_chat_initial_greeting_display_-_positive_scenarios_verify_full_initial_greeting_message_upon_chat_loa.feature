Feature: Chat Initial Greeting Display - Positive Scenarios

  Scenario: Verify full initial greeting message upon chat load
    Given User navigates to the chat application
    Then The chat greeting message should contain "Hello! My name is DelShawnte, and I'll be the OwnCompany customer service chat associate assisting you today. May I please ask who I have the pleasure of speaking with?"

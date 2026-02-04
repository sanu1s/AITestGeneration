Feature: Chat Initial Greeting Display - Positive Scenarios

  Scenario: Verify specific parts of the initial greeting message
    Given User navigates to the chat application
    Then The chat greeting message should contain "Hello! My name is DelShawnte"
    And The chat greeting message should contain "customer service chat associate assisting you today"
    And The chat greeting message should contain "May I please ask who I have the pleasure of speaking with?"

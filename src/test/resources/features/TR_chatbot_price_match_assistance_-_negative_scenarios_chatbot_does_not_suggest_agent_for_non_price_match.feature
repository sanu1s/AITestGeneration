Feature: Chatbot Price Match Assistance - Negative Scenarios

  Scenario: Chatbot does not suggest agent for non-price match query
    Given user is on the chat support page
    When user types "What is your return policy?" into the chat input
    And user sends the message
    Then the chatbot should not display the message "I understand you're looking for a price match. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"

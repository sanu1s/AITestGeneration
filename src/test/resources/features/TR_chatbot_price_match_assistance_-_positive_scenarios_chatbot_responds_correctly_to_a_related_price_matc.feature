Feature: Chatbot Price Match Assistance - Positive Scenarios

  Scenario: Chatbot responds correctly to a related price match query
    Given user is on the chat support page
    When user types "Can I get a price adjustment?" into the chat input
    And user sends the message
    Then the chatbot should display the message "I understand you're looking for a price match. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"

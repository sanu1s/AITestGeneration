Feature: Chatbot Escalation to Live Agent - Positive Scenarios

  Scenario: Chatbot identifies complex billing query and offers live agent assistance
    Given the user is on the chatbot interface
    When the user sends a message "I have a complex billing issue that needs a human agent."
    Then the chatbot should respond with "This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"

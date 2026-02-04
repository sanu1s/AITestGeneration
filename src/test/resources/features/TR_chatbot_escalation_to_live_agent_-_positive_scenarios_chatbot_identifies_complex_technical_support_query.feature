Feature: Chatbot Escalation to Live Agent - Positive Scenarios

  Scenario: Chatbot identifies complex technical support query and offers live agent assistance
    Given the user is on the chatbot interface
    When the user sends a message "My device is having a very specific technical problem that requires advanced support."
    Then the chatbot should respond with "This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"

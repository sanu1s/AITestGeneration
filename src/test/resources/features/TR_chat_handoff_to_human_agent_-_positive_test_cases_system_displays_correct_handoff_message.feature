Feature: Chat Handoff to Human Agent - Positive Test Cases

  Scenario: System displays correct handoff message
    Given the user is in an active chat session with the digital assistant
    When a care representative successfully takes over the conversation
    Then the chat window should display the system message "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."

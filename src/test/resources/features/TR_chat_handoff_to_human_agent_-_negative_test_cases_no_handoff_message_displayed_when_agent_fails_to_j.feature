Feature: Chat Handoff to Human Agent - Negative Test Cases

  Scenario: No handoff message displayed when agent fails to join
    Given the user is in an active chat session with the digital assistant
    When a care representative fails to take over the conversation
    Then the chat window should NOT display the system message "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."
    And the chat window should display an error message "Failed to connect to a care representative. Please try again later."

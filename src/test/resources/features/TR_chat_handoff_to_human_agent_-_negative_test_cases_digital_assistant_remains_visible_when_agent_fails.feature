Feature: Chat Handoff to Human Agent - Negative Test Cases

  Scenario: Digital assistant remains visible when agent fails to join
    Given the user is in an active chat session with the digital assistant
    When a care representative fails to take over the conversation
    Then the digital assistant's avatar or name should still be visible in the chat participant list

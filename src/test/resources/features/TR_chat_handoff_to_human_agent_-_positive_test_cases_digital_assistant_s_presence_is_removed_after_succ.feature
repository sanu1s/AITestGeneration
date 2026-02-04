Feature: Chat Handoff to Human Agent - Positive Test Cases

  Scenario: Digital assistant's presence is removed after successful handoff
    Given the user is in an active chat session with the digital assistant
    When a care representative successfully takes over the conversation
    Then the digital assistant's avatar or name should no longer be visible in the chat participant list

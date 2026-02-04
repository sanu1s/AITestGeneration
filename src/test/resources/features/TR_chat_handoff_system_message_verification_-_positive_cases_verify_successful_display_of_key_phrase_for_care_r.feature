Feature: Chat Handoff System Message Verification - Positive Cases

  Scenario: Verify successful display of key phrase for care representative
    Given User is on the chat interface page
    Then the system message should contain "care representative is joining"

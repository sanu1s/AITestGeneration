Feature: Chat Handover Process - Positive Scenarios

  Scenario: Verify System Message When Digital Assistant Steps Away
    Given a user is on the chat support page with an ongoing conversation
    When the digital assistant steps away from the conversation
    Then the system message display should contain "The digital assistant is stepping away to allow them to take over."

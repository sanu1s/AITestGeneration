Feature: Handoff from Digital Assistant to Care Representative - Positive Scenarios

  Scenario: User sees representative join and assistant depart messages
    Given the user is interacting with the digital assistant
    When a live agent takes over the chat
    Then the chat history should contain "A care representative is joining now to continue the conversation."
    And the chat history should contain "The digital assistant is stepping away to allow them to take over."

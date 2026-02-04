Feature: Chat Handoff Message Display - Negative Scenarios

  Scenario: Handoff message NOT displayed during simple interaction
    Given User is on the chat interface at "https://example.com/chat"
    When User types "Hello" into the chat input
    And User presses Enter
    Then The chat area should NOT display the message "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."

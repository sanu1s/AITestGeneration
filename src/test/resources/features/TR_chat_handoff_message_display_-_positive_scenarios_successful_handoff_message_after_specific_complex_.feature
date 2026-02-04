Feature: Chat Handoff Message Display - Positive Scenarios

  Scenario: Successful handoff message after specific complex query
    Given User is on the chat interface at "https://example.com/chat"
    When User types "I need to speak to a supervisor about my refund" into the chat input
    And User presses Enter
    Then The chat area should display the message "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."

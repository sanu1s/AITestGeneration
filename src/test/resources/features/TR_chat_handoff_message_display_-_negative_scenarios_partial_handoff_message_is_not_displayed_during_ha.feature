Feature: Chat Handoff Message Display - Negative Scenarios

  Scenario: Partial handoff message is NOT displayed during handoff
    Given User is on the chat interface at "https://example.com/chat"
    When User clicks the "Request Human Agent" button
    Then The chat area should NOT display the message "A care representative is joining now."

Feature: Chat Handoff Message Display - Positive Scenarios

  Scenario: Successful handoff message after user request
    Given User is on the chat interface at "https://example.com/chat"
    When User clicks the "Request Human Agent" button
    Then The chat area should display the message "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."

Feature: Chat Handover Message Verification - Positive and Negative Scenarios

  Scenario: Negative - Verify Absence of Handover Message Before Join
    Given User is on the chat interface
    When A care representative has not yet joined the conversation
    Then The status message result should not contain "A care representative is joining now"

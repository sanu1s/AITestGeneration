Feature: Chat Handover Message Verification - Positive and Negative Scenarios

  Scenario: Positive - Verify Key Phrases in Handover Message
    Given User is on the chat interface
    When A care representative takes over the conversation
    Then The status message result should contain "A care representative is joining"
    And The status message result should contain "digital assistant is stepping away"

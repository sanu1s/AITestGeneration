Feature: Chat Handover Message Verification - Positive and Negative Scenarios

  Scenario: Positive - Verify Full Handover Message Display
    Given User is on the chat interface
    When A care representative takes over the conversation
    Then The status message result should display "A care representative is joining now to continue the conversation. The digital assistant is stepping away to allow them to take over."

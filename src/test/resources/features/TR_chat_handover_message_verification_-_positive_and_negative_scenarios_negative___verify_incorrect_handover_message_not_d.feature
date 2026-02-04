Feature: Chat Handover Message Verification - Positive and Negative Scenarios

  Scenario: Negative - Verify Incorrect Handover Message Not Displayed
    Given User is on the chat interface
    When A care representative takes over the conversation
    Then The status message result should not display "An incorrect agent message."

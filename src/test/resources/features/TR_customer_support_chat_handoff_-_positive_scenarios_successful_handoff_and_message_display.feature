Feature: Customer Support Chat Handoff - Positive Scenarios

  Scenario: Successful Handoff and Message Display
    Given User is on the customer support chat page
    When User clicks the "Chat with Agent" button
    Then the status message should contain "A care representative is joining now to continue the conversation."
    And the status message should contain "The digital assistant is stepping away to allow them to take over."

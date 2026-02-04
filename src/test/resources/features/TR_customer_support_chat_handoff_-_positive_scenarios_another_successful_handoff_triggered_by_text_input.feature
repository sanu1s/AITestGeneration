Feature: Customer Support Chat Handoff - Positive Scenarios

  Scenario: Another Successful Handoff Triggered by Text Input
    Given User is on the customer support chat page
    When User types "I need a human" into the chat input and presses Enter
    Then the status message should contain "A care representative is joining now to continue the conversation."
    And the status message should contain "The digital assistant is stepping away to allow them to take over."

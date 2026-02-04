Feature: Customer Support Chat Handoff - Negative Scenarios

  Scenario: Handoff Fails - System Error
    Given User is on the customer support chat page
    When User clicks the "Chat with Agent" button
    Then the error message should display "A system error occurred during handoff. Please refresh the page."

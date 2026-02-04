Feature: Customer Support Chat Handoff - Negative Scenarios

  Scenario: Handoff Fails - No Agent Available
    Given User is on the customer support chat page
    When User clicks the "Chat with Agent" button
    Then the error message should display "No human agents are currently available. Please try again later."

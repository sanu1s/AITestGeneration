Feature: Order Cancellation - Agent Handoff (Negative Test Cases)

  Scenario: System informs agent unavailability for another cancellation request
    Given User is on the order tracking page
    When User enters order number "CANCEL_AGENT_BUSY"
    And User clicks the "Track Order" button
    Then The error message should display "All agents are currently busy. We apologize for the inconvenience."

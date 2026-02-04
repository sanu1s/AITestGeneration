Feature: Order Cancellation - Agent Handoff (Negative Test Cases)

  Scenario: System informs agent unavailability for cancellation request
    Given User is on the order tracking page
    When User enters order number "CANCEL_NO_AGENT"
    And User clicks the "Track Order" button
    Then The error message should display "No care representatives are available at this time. Please try again later."

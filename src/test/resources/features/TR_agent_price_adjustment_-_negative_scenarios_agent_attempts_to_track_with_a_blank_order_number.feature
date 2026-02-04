Feature: Agent Price Adjustment - Negative Scenarios

  Scenario: Agent attempts to track with a blank order number
    Given Agent is on the order tracking page
    When Agent enters order number "   "
    And Agent clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."

Feature: Agent Price Adjustment - Negative Scenarios

  Scenario: Agent attempts to track an invalid order number
    Given Agent is on the order tracking page
    When Agent enters order number "INVALID123"
    And Agent clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the order number."

Feature: Order Tracking System - Negative Scenarios

  Scenario: User tries to track a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT1"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please verify the number."

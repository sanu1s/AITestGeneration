Feature: Order Tracking System - Negative Scenarios

  Scenario: Tracking with Non-existent Order Number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT007"
    And User clicks the "Track Order" button
    Then The error message should display "Order Not Found. Please verify your order number."

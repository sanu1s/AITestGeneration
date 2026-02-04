Feature: Order Tracking System - Negative Scenarios

  Scenario: Attempt to track order with an invalid order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

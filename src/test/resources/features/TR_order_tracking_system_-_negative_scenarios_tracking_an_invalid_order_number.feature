Feature: Order Tracking System - Negative Scenarios

  Scenario: Tracking an Invalid Order Number
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "INVALID999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

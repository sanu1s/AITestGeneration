Feature: Order Tracking System - Negative Test Cases

  Scenario: Display error for an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

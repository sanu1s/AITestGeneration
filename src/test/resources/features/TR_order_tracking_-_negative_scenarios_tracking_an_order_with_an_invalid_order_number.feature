Feature: Order Tracking - Negative Scenarios

  Scenario: Tracking an order with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Attempt to track an order with an invalid order number
    Given User is on the order tracking page "https://www.example.com/order-tracking"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

Feature: Order Tracking Service - Negative Scenarios

  Scenario: Attempt to track an invalid order number
    Given User is on the order tracking page "http://127.0.0.1:8088/order/tracking"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found"

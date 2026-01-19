Feature: Order Tracking Functionality

  Scenario: Track a specific order with special status
    Given User is on the order tracking page "http://127.0.0.1:8000/order/tracking"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be displayed as "Delayed"
    And The order details should include "Delivery Date"

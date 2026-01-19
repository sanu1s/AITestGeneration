Feature: Order Tracking Service

  Scenario: Track a delayed order with specific details
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The result should display "Delivery Date"
    And The current URL should be "http://127.0.0.1:8000/order/tracking"

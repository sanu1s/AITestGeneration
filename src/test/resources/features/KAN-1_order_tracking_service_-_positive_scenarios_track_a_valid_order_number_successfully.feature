Feature: Order Tracking Service - Positive Scenarios

  Scenario: Track a valid order number successfully
    Given User is on the order tracking page "http://127.0.0.1:8088/order/tracking"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"

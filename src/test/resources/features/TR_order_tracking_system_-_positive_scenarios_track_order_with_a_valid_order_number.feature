Feature: Order Tracking System - Positive Scenarios

  Scenario: Track order with a valid order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD12345 is Shipped"

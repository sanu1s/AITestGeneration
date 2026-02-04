Feature: Order Tracking System - Positive Scenarios

  Scenario: Successful Order Tracking with a Valid Order Number
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order Shipped"

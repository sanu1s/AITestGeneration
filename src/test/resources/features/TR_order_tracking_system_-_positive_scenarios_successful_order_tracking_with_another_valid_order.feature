Feature: Order Tracking System - Positive Scenarios

  Scenario: Successful Order Tracking with Another Valid Order Number
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order Delivered"

Feature: Order Tracking System - Positive Scenarios

  Scenario: Successfully track a shipped order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order Status: Shipped"

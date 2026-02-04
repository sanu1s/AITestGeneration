Feature: Order Tracking System - Positive Scenarios

  Scenario: User successfully tracks a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order Status: Shipped"

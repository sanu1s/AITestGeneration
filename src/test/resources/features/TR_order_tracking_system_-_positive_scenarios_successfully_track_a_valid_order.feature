Feature: Order Tracking System - Positive Scenarios

  Scenario: Successfully track a valid order
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD12345 is Shipped."

Feature: Order Tracking System - Positive Scenarios

  Scenario: Successfully track another valid order
    Given User is on the Order Tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD98765 is Delivered."

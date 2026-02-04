Feature: Order Tracking - Negative Scenarios

  Scenario: Order displays outdated shipping address after update request
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks "Track Order" button
    Then The order status should display "Order placed, shipping to 789 Old Address, Old City, 30003"
    And The order status should not contain "101 New Address, New Town"

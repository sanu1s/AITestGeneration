Feature: Order Tracking - Positive Scenarios

  Scenario: User can successfully track a valid order
    Given User is on the order tracking page
    When User enters order number "ORD123"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD123 is Shipped"

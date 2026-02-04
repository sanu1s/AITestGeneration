Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: User successfully tracks a valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD12345 is Shipped"

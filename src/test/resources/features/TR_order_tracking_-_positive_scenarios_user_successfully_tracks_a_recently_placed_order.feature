Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks a recently placed order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 placed a few hours ago and is being processed."

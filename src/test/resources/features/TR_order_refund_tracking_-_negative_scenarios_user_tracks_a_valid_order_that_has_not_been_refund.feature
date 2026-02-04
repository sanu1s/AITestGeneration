Feature: Order Refund Tracking - Negative Scenarios

  Scenario: User tracks a valid order that has not been refunded
    Given User is on the order tracking page
    When User enters order number "DELIVERED789"
    And User clicks the "Track Order" button
    Then The order status should display "Order DELIVERED on 2023-10-26."

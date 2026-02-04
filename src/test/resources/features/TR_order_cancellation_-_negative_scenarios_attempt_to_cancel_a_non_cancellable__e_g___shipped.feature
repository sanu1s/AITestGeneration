Feature: Order Cancellation - Negative Scenarios

  Scenario: Attempt to cancel a non-cancellable (e.g., shipped) order
    Given User is on the order tracking page
    When User enters order number "ORD00002_SHIPPED"
    And User clicks "Track Order" button
    And User clicks "Cancel Order" button
    Then The error message should display "Order ORD00002_SHIPPED cannot be cancelled as it has already been shipped."

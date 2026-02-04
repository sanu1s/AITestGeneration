Feature: Order Cancellation - Negative Scenarios

  Scenario: Attempt to cancel an order that is not cancellable (e.g., shipped)
    Given User is on the order tracking page
    When User enters order number "ORD_SHIPPED_NOT_CANCELLABLE"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD_SHIPPED_NOT_CANCELLABLE cannot be cancelled as it has already been shipped."

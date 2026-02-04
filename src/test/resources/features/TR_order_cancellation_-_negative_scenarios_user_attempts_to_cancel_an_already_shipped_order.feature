Feature: Order Cancellation - Negative Scenarios

  Scenario: User attempts to cancel an already shipped order
    Given User is on the order cancellation page "http://localhost:8080/cancel"
    When User enters order number "SHIPPED_ORD_789"
    And User clicks the "Cancel Order" button
    Then The error message should display "Order SHIPPED_789 cannot be cancelled as it has already shipped."

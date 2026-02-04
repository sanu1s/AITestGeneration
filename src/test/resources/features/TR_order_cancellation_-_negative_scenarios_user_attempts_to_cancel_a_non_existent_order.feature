Feature: Order Cancellation - Negative Scenarios

  Scenario: User attempts to cancel a non-existent order
    Given User is on the order cancellation page "http://localhost:8080/cancel"
    When User enters order number "NON_EXISTENT_ORD_000"
    And User clicks the "Cancel Order" button
    Then The error message should display "Order NON_EXISTENT_ORD_000 not found. Cancellation not possible."

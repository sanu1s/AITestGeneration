Feature: Order Cancellation - Positive Scenarios

  Scenario: User successfully cancels a valid pillow order
    Given User is on the order cancellation page "http://localhost:8080/cancel"
    When User enters order number "PILLOW_ORD_123"
    And User clicks the "Cancel Order" button
    Then The status message should display "Order PILLOW_ORD_123 has been successfully cancelled."

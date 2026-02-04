Feature: Order Status for Cancellation (Negative Scenarios)

  Scenario: Verify error for an order that cannot be cancelled (e.g., already shipped)
    Given User is on the order tracking page
    When User enters order number "0061845948"
    And User clicks the "Track Order" button
    Then The error message should display "Order 0061845948 cannot be cancelled as it has already shipped."

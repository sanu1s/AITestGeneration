Feature: Order Cancellation Capability Verification (Negative Test Cases)

  Scenario: User attempts to verify a non-cancellable order
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "SHIPPED111"
    And User clicks the "Track Order" button
    Then The order status should display "Order SHIPPED111 is not cancellable (already shipped)."

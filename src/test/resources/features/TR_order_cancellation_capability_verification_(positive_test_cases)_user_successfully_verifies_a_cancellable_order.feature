Feature: Order Cancellation Capability Verification (Positive Test Cases)

  Scenario: User successfully verifies a cancellable order
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "CAN12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order CAN12345 is cancellable."

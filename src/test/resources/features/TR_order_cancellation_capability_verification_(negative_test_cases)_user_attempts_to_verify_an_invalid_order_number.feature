Feature: Order Cancellation Capability Verification (Negative Test Cases)

  Scenario: User attempts to verify an invalid order number
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "INVALID999"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID999 not found."

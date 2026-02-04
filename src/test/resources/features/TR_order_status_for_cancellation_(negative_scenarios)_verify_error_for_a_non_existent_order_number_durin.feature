Feature: Order Status for Cancellation (Negative Scenarios)

  Scenario: Verify error for a non-existent order number during cancellation attempt
    Given User is on the order tracking page
    When User enters order number "0000000000"
    And User clicks the "Track Order" button
    Then The error message should display "Order 0000000000 not found."

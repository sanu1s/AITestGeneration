Feature: Order Cancellation - Negative Test Cases

  Scenario: Attempt to cancel a non-existent order
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT123"
    And User clicks the "Track Order" button
    Then The error message should display "Order NONEXISTENT123 not found. Please check your order number."

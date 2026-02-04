Feature: Order Delivery Address Update Verification (Negative)

  Scenario: Display error for non-existent order number after address change attempt
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT_ADDR"
    And User clicks the Track Order button
    Then The error message should display "Order not found. Please check your order number."

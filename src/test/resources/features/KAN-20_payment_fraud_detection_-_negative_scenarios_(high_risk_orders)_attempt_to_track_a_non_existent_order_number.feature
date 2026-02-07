Feature: Payment Fraud Detection - Negative Scenarios (High Risk Orders)

  Scenario: Attempt to track a non-existent order number
    Given User is on the order tracking page
    When User enters order number "INVALID001" and tracks the order
    Then The order status should display "Order not found"

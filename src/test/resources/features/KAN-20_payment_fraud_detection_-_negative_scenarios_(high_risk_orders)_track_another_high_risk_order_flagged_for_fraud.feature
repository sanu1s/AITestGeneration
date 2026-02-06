Feature: Payment Fraud Detection - Negative Scenarios (High Risk Orders)

  Scenario: Track another high-risk order flagged for fraud
    Given User is on the order tracking page
    When User enters order number "HR54321" and tracks the order
    Then The order status should display "Payment Under Review (Fraud)"

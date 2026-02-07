Feature: Payment Fraud Detection - Positive Scenarios (Low Risk Orders)

  Scenario: Successfully track a low-risk order
    Given User is on the order tracking page
    When User enters order number "LR12345" and tracks the order
    Then The order status should display "The order status Delayed"

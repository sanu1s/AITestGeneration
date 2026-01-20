Feature: Order Tracking - Edge Cases

  Scenario: Attempt to track with an excessively long order number
    Given User is on the order tracking page
    When User enters order number "ORD1234567890123456789012345678901234567890" and clicks 'Track Order'
    Then The error message should display "Order number exceeds maximum length."

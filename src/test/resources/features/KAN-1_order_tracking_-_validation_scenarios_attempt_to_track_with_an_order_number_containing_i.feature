Feature: Order Tracking - Validation Scenarios

  Scenario: Attempt to track with an order number containing invalid characters
    Given User is on the order tracking page
    When User enters order number "ORD!@#$" and clicks 'Track Order'
    Then The error message should display "Invalid order number format."

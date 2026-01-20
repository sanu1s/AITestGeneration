Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for malformed (special characters) order number
    Given User is on the order tracking page
    When User enters order number "ORD!@#$" and clicks 'Track Order'
    Then The error message should display "Invalid order number format"

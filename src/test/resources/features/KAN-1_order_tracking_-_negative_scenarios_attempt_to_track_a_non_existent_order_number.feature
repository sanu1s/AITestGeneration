Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT" and clicks 'Track Order'
    Then The error message should display "Order NONEXISTENT not found."

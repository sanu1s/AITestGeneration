Feature: Order Tracking - Validation Scenarios

  Scenario: Attempt to track with an empty order number
    Given User is on the order tracking page
    When User leaves the order number field empty and clicks 'Track Order'
    Then The error message should display "Order number cannot be empty."

Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track an order with special characters in the order number
    Given User is on the order tracking page
    When User enters order number "ORD!@#$"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format. Only alphanumeric characters and underscores are allowed."

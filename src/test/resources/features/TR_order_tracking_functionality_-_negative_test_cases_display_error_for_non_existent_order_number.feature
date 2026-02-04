Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Display error for non-existent order number
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "ORD99999" and clicks the "Track Order" button
    Then The error message should display "Order ORD99999 not found. Please check your order number."

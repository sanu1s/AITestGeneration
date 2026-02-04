Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with a non-existent order number
    User is on the order tracking page "https://example.com/trackorder"
    User enters order number "000000000000"
    User clicks the "Track Order" button
    The error message should display "Order not found. Please verify the order number."

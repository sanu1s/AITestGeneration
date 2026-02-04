Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an invalid order number format
    User is on the order tracking page "https://example.com/trackorder"
    User enters order number "INVALID123"
    User clicks the "Track Order" button
    The error message should display "Invalid Order Number format. Please check and try again."

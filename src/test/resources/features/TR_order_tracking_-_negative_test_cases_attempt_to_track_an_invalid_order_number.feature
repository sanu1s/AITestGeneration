Feature: Order Tracking - Negative Test Cases

  Scenario: Attempt to track an invalid order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order 'INVALID123' not found. Please check your order number."

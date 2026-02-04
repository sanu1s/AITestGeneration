Feature: Order Tracking - Negative Scenarios for Invalid Input

  Scenario: Display error for a non-existent order number
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "NONEXISTENT111"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

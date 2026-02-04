Feature: Order Tracking with Address Updates - Negative Scenarios

  Scenario: Attempt to track an order with a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."
    And The URL should match pattern "**/track"

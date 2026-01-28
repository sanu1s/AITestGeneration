Feature: Order Tracking Validation

  Scenario: Attempt to track with a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."
    And The URL should remain "http://127.0.0.1:8000/order/tracking"

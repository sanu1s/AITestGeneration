Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track an invalid order
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

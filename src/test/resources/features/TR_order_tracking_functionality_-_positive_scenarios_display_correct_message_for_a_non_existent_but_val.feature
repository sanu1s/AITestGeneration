Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Display correct message for a non-existent but validly formatted order
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please verify the order number."

Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for a partially valid order number
    Given User is on the order tracking page
    When User enters order number "ORD"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

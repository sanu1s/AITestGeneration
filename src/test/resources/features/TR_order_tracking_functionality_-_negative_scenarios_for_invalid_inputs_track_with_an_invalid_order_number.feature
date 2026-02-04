Feature: Order Tracking Functionality - Negative Scenarios for Invalid Inputs

  Scenario: Track with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID-ORD-789"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

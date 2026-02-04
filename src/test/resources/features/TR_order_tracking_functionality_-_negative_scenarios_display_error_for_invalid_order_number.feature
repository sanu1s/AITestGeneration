Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Display error for invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID001"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

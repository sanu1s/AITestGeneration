Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Track an Invalid Order Number
    Given User is on the order tracking page
    When User enters order number "INVALID_ORD"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

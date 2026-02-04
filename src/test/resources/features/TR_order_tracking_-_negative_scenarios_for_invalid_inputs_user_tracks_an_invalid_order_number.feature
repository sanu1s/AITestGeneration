Feature: Order Tracking - Negative Scenarios for Invalid Inputs

  Scenario: User tracks an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID789"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

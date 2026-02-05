Feature: Order Tracking Service - Negative Scenarios

  Scenario: Track an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID999"
    And User clicks the "Track Order" button
    Then The result message should display "Order not found. Please check the order number."

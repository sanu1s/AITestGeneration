Feature: Order Tracking - Negative Scenarios for Invalid Order Numbers

  Scenario: Attempt to track an order with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

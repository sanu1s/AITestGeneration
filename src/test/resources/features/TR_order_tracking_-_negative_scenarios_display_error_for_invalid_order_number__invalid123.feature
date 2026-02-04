Feature: Order Tracking - Negative Scenarios

  Scenario: Display Error for Invalid Order Number (INVALID123)
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number and try again."

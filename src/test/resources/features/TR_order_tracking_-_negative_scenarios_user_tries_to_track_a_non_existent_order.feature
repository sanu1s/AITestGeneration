Feature: Order Tracking - Negative Scenarios

  Scenario: User tries to track a non-existent order
    Given User is on the order tracking page
    When User enters order number "000000000000"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

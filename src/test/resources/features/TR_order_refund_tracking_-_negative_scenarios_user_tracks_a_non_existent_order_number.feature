Feature: Order Refund Tracking - Negative Scenarios

  Scenario: User tracks a non-existent order number
    Given User is on the order tracking page
    When User enters order number "INVALID000"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the order number."

Feature: Order Tracking - Negative Scenarios

  Scenario: Track a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT"
    And User clicks the "Track Order" button
    Then The result should display "Order not found"

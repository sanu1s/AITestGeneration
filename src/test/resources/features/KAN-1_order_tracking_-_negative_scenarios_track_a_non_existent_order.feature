Feature: Order Tracking - Negative Scenarios

  Scenario: Track a non-existent order
    Given User is on the order tracking page
    When User enters order number "NONEXIST"
    And User clicks the "Track Order" button
    Then The result should display error message "Order not found"

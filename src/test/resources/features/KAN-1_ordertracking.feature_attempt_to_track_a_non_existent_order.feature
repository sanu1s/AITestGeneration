Feature: OrderTracking.feature

  Scenario: Attempt to track a non-existent order
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."

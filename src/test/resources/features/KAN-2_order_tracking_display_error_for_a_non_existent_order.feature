Feature: Order Tracking

  Scenario: Display error for a non-existent order
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT"
    And User clicks the "Track Order" button
    Then The result message should display "Order not found."

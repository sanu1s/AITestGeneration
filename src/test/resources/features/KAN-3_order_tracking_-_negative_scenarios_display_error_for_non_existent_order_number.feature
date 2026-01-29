Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT"
    And User clicks the "Track Order" button
    Then An error message "Order not found." should be displayed

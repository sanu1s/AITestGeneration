Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Display error for a non-existent order number
    Given user is on the order tracking page
    When User enters order number "NONEXISTENT123"
    And User clicks the "Track Order" button
    Then The error message should display "Order NONEXISTENT123 not found. Please check your order number."

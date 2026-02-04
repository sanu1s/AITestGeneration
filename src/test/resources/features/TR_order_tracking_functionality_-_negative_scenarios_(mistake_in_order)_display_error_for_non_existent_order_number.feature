Feature: Order Tracking Functionality - Negative Scenarios (Mistake in Order)

  Scenario: Display error for non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the order number."

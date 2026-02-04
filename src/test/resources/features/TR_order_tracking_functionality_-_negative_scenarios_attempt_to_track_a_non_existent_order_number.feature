Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Attempt to track a non-existent order number
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "NONEXISTENT999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please verify the number."

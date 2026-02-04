Feature: Order Cancellation Functionality - Positive and Negative Scenarios

  Scenario: Attempt to cancel a non-existent order
    Given User is on the "Order Tracking" page at "https://example.com/track"
    When User enters order number "NONEXISTENT123"
    And User clicks "Track Order" button
    Then The error message should display "Order NONEXISTENT123 not found. Please check the order number."

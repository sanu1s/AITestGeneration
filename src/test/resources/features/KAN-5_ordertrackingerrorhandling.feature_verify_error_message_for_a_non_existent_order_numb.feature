Feature: OrderTrackingErrorHandling.feature

  Scenario: Verify error message for a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found"

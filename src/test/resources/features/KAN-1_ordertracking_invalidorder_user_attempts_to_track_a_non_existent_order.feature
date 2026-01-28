Feature: OrderTracking_InvalidOrder

  Scenario: User attempts to track a non-existent order
    Given User is on the Order Tracking page
    When User enters order number "NONEXISTENT"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the order number."

Feature: Order Cancellation - Positive Scenarios

  Scenario: Successfully cancel a pending order
    Given User is on the order tracking page
    When User enters order number "ORD_PENDING_001"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    And User confirms the cancellation
    Then The status message should display "Order ORD_PENDING_001 has been successfully cancelled."

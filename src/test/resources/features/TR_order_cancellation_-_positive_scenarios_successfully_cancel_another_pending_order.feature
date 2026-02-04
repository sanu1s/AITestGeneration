Feature: Order Cancellation - Positive Scenarios

  Scenario: Successfully cancel another pending order
    Given User is on the order tracking page
    When User enters order number "ORD_PENDING_002"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    And User confirms the cancellation
    Then The status message should display "Order ORD_PENDING_002 has been successfully cancelled."

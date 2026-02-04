Feature: Order Cancellation - Negative Scenarios

  Scenario: Attempt to cancel an already cancelled order
    Given User is on the order tracking page
    When User enters order number "ORD_ALREADY_CANCELLED"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD_ALREADY_CANCELLED is already cancelled and cannot be modified."

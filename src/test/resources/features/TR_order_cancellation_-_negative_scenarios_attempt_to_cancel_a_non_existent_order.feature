Feature: Order Cancellation - Negative Scenarios

  Scenario: Attempt to cancel a non-existent order
    Given User is on the order tracking page
    When User enters order number "NON_EXISTENT_ORD"
    And User clicks the "Track Order" button
    Then The error message should display "Order NON_EXISTENT_ORD not found. Please check the order number."

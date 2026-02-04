Feature: Order Tracking - Handle Invalid Order Inputs (Negative Scenarios)

  Scenario: Attempt to track a non-existent order
    Given User is on the order tracking page
    When User enters order number "NON_EXISTENT_ORD789"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."

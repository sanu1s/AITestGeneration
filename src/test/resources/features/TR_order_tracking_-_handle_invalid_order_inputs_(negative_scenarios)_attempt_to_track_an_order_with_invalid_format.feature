Feature: Order Tracking - Handle Invalid Order Inputs (Negative Scenarios)

  Scenario: Attempt to track an order with invalid format
    Given User is on the order tracking page
    When User enters order number "INVALID_ORD!@#"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."

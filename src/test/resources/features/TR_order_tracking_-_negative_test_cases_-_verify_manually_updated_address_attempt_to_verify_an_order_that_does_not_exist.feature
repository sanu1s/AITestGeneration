Feature: Order Tracking - Negative Test Cases - Verify Manually Updated Address

  Scenario: Attempt to verify an order that does not exist
    Given User is on the order tracking page
    When User enters order number "INVALID_ORD_999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

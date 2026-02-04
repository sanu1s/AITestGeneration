Feature: Order Tracking System - Negative Scenarios - Invalid Order Number Inputs

  Scenario: Attempt to track an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID_ORDER_XYZ"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."

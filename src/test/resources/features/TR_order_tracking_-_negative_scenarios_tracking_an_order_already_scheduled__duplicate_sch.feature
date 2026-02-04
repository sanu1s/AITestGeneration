Feature: Order Tracking - Negative Scenarios

  Scenario: Tracking an order already scheduled (duplicate scheduling attempt)
    Given User is on the order tracking page
    When User enters order number "ORD-DUPLICATE"
    And User clicks the "Track Order" button
    Then The error message should display "Order ORD-DUPLICATE is already scheduled. No further action required."

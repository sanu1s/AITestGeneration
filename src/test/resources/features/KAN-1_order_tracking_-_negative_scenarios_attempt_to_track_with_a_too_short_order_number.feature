Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with a too short order number
    Given User is on the order tracking page
    When User enters order number "ORD1"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 7 characters long."

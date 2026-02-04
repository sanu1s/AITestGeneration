Feature: Order Tracking - Negative Test Cases

  Scenario: Tracking with a malformed order number
    Given User is on the order tracking page
    When User enters order number "ORD-123!"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid format for order number."

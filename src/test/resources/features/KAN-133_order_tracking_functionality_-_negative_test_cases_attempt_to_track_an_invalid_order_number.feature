Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track an invalid order number
    Given User is on the Order Search page
    When User enters an invalid order number "INVALID123" and tracks it
    Then The result area should display "Order not found"

Feature: Order Tracking - Negative Test Cases

  Scenario: Verify error message when tracking with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."

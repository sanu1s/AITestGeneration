Feature: Order Tracking - Negative Test Cases

  Scenario: Attempt to track a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT99"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found"

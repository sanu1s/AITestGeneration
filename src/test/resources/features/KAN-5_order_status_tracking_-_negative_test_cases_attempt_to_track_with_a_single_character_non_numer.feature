Feature: Order Status Tracking - Negative Test Cases

  Scenario: Attempt to track with a single character non-numeric order number
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"

Feature: Order Tracking - Negative Scenarios - Invalid Input

  Scenario: Tracking with a single-character non-numeric order number
    Given User is on the order tracking page "http://127.0.0.1:8088/order/tracking"
    When User enters order number "A"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"

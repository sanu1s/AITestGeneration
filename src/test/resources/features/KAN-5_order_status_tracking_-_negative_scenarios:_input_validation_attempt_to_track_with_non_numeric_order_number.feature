Feature: Order Status Tracking - Negative Scenarios: Input Validation

  Scenario: Attempt to track with non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ORD123"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"

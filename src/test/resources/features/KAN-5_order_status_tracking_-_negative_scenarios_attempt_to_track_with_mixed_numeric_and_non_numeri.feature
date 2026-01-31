Feature: Order Status Tracking - Negative Scenarios

  Scenario: Attempt to track with mixed numeric and non-numeric input
    Given User is on the order tracking page
    When User enters order number "1A2"
    And User clicks the Track Order button
    Then The error message should display "Order number must be numeric"

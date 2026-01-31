Feature: Order Status Tracking - Negative Scenarios

  Scenario: Attempt to track with non-numeric input
    Given User is on the order tracking page
    When User enters order number "ABC"
    And User clicks the Track Order button
    Then The error message should display "Order number must be numeric"

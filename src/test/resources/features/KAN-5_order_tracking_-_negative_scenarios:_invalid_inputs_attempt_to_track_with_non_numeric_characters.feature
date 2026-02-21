Feature: Order Tracking - Negative Scenarios: Invalid Inputs

  Scenario: Attempt to track with non-numeric characters
    Given User is on the order tracking page
    When User enters order number "ABC123"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"

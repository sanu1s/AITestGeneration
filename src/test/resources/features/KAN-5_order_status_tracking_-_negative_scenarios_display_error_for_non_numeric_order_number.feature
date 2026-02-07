Feature: Order Status Tracking - Negative Scenarios

  Scenario: Display error for non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ABCDE"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"

Feature: Order Status Tracking - Negative Test Cases

  Scenario: Attempt to track with a non-numeric order number
    Given User is on the Order Tracking page
    When User enters order number "ABC"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"

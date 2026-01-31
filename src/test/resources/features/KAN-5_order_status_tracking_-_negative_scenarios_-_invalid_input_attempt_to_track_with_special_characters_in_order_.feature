Feature: Order Status Tracking - Negative Scenarios - Invalid Input

  Scenario: Attempt to track with special characters in order number
    Given User is on the order tracking page
    When User enters order number "@#$!%"
    And User clicks on "Track Order" button
    Then The error message should display "Order number must be numeric"

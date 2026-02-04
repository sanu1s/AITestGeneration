Feature: Order Tracking - Negative Scenarios - Missing Order Number

  Scenario: Attempt to track without interacting with the order number field
    Given User is on the order tracking page
    When User does not enter any order number
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be blank"

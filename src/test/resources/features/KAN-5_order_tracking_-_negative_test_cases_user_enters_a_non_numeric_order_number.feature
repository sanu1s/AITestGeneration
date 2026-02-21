Feature: Order Tracking - Negative Test Cases

  Scenario: User enters a non-numeric order number
    Given User navigates to the order tracking page
    When User enters order number "ABC"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"

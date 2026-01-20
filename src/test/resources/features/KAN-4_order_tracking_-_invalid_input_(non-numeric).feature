Feature: Order Tracking - Invalid Input (Non-Numeric)

  Scenario: Display error for non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ABCDEFGHIJKL"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 12 digits and numeric."

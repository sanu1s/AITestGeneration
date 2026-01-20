Feature: Order Tracking - Invalid Input (Short Length)

  Scenario: Display error for short order number
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 12 digits and numeric."

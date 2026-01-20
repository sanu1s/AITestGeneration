Feature: Order Tracking - Invalid Input (Long Length)

  Scenario: Display error for long order number
    Given User is on the order tracking page
    When User enters order number "123456789012345"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 12 digits and numeric."

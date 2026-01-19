Feature: Order Tracking - Invalid Inputs

  Scenario: Tracking with a mixed alphanumeric order number
    Given User is on the order tracking page
    When User enters order number "1234ABCD5678"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric."

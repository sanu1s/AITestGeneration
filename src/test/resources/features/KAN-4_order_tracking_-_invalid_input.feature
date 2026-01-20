Feature: Order Tracking - Invalid Input

  Scenario: Attempt to track with mixed characters and invalid length (ORD12345)
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be 12 digits and numeric."

Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an invalid length order number
    Given User is on the order tracking page
    When User enters order number "SHORT"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 10 characters long."

Feature: Order Tracking Validation

  Scenario: Tracking with an order number of incorrect length
    Given User is on the order tracking page
    When User enters order number "SHORT"
    And User clicks the "Track Order" button
    Then The error message should display "Order number has an invalid length."

Feature: OrderTrackingNegative.feature

  Scenario: Display error when tracking with only spaces as order number
    Given User is on the order tracking page
    When User enters order number "   "
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty"

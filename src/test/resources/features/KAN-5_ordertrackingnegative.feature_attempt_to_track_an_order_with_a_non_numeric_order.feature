Feature: OrderTrackingNegative.feature

  Scenario: Attempt to track an order with a non-numeric order number
    Given User navigates to the order tracking page
    When User enters order number "ABCDE"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"

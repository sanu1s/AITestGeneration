Feature: OrderTrackingNegative.feature

  Scenario: Track with an invalid order number format
    Given User is on the order tracking page
    When User enters order number "INV@L1D"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid order number format."

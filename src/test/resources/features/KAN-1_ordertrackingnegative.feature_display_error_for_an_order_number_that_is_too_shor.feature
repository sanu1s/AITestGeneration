Feature: OrderTrackingNegative.feature

  Scenario: Display error for an order number that is too short
    Given User is on the order tracking page
    When User enters order number "ORD1"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format"

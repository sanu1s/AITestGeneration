Feature: Order Tracking for Price Adjustment - Positive Scenarios

  Scenario: Successfully track a valid order for price adjustment
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD78901 found. You may be eligible for a price adjustment."

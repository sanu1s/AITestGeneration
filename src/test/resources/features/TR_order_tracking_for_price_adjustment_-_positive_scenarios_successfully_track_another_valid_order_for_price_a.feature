Feature: Order Tracking for Price Adjustment - Positive Scenarios

  Scenario: Successfully track another valid order for price adjustment
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD23456 found. You may be eligible for a price adjustment."

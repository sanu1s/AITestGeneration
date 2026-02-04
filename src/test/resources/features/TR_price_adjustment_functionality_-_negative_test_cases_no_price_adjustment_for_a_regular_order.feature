Feature: Price Adjustment Functionality - Negative Test Cases

  Scenario: No Price Adjustment for a Regular Order
    Given User is on the price adjustment page
    When User enters order number "ORD_REG_001"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD_REG_001 details displayed. No price adjustment applied."

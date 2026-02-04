Feature: Price Adjustment Functionality - Negative Test Cases

  Scenario: Price Adjustment Failed for an Invalid Order Number
    Given User is on the price adjustment page
    When User enters order number "INVALID_ORD_007"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Price adjustment not possible."

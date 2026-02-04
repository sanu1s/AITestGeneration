Feature: Price Adjustment Functionality - Positive Test Cases

  Scenario: Successful Price Adjustment for a Pre-approved Order
    Given User is on the price adjustment page
    When User enters order number "ORD_ADJ_101"
    And User clicks the "Track Order" button
    Then The status message should display "Price adjusted successfully for ORD_ADJ_101. New price: $99.99"

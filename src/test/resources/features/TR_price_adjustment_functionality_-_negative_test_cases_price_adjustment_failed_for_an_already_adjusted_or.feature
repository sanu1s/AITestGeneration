Feature: Price Adjustment Functionality - Negative Test Cases

  Scenario: Price Adjustment Failed for an Already Adjusted Order
    Given User is on the price adjustment page
    When User enters order number "ORD_ADJ_DONE_003"
    And User clicks the "Track Order" button
    Then The error message should display "Order ORD_ADJ_DONE_003 already adjusted. No further changes."

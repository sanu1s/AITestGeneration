Feature: Order Tracking for Price Adjustment Eligibility - Positive Scenarios

  Scenario: Successfully track a valid order for price adjustment
    Given User is on the Order Tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD78901 found. Eligible for review."

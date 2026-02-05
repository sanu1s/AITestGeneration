Feature: Order Tracking for Price Adjustment Eligibility - Negative Scenarios

  Scenario: Attempt to track an order that is too old for adjustment
    Given User is on the Order Tracking page
    When User enters order number "ORDOLD777"
    And User clicks the "Track Order" button
    Then The error message should display "Order ORDOLD777 is too old for price adjustment eligibility."

Feature: Order Tracking for Price Adjustment Eligibility - Negative Scenarios

  Scenario: Attempt to track with an invalid order number
    Given User is on the Order Tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."

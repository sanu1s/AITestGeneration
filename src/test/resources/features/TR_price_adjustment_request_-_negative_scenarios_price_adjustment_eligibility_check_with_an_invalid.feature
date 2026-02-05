Feature: Price Adjustment Request - Negative Scenarios

  Scenario: Price Adjustment Eligibility Check with an invalid order number
    Given User is on the "Price Adjustment Request" page
    When User enters an invalid order number "INVALID123"
    And User clicks the "Check Eligibility" button
    Then The error message should display "Order not found. Please check your order number."

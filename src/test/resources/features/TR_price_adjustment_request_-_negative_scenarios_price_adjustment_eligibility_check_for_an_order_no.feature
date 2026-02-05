Feature: Price Adjustment Request - Negative Scenarios

  Scenario: Price Adjustment Eligibility Check for an order not eligible based on policy
    Given User is on the "Price Adjustment Request" page
    When User enters an ineligible order number "ORDOLD999"
    And User clicks the "Check Eligibility" button
    Then The error message should display "Order not eligible for price adjustment based on policy."

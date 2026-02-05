Feature: Price Adjustment Request - Negative Scenarios

  Scenario: Price Adjustment Eligibility Check with an empty order number
    Given User is on the "Price Adjustment Request" page
    When User leaves the order number field empty
    And User clicks the "Check Eligibility" button
    Then The error message should display "Order number is required."

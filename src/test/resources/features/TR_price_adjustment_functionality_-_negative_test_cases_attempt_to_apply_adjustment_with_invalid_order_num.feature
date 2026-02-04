Feature: Price Adjustment Functionality - Negative Test Cases

  Scenario: Attempt to apply adjustment with invalid order number
    Given User is on the "http://localhost:8080/price-adjustment" page
    When User enters order number "INVALIDORDER"
    And User enters adjustment amount "5.00"
    And User clicks "Apply Adjustment" button
    Then The error message should display "Order 'INVALIDORDER' not found."

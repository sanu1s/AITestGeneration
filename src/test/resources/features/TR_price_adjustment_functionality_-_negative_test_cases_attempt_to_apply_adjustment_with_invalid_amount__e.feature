Feature: Price Adjustment Functionality - Negative Test Cases

  Scenario: Attempt to apply adjustment with invalid amount (e.g., non-numeric)
    Given User is on the "http://localhost:8080/price-adjustment" page
    When User enters order number "ORD11223"
    And User enters adjustment amount "abc"
    And User clicks "Apply Adjustment" button
    Then The error message should display "Invalid adjustment amount. Please enter a numeric value."

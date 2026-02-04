Feature: Price Adjustment Functionality - Negative Test Cases

  Scenario: Attempt to apply adjustment with empty amount
    Given User is on the "http://localhost:8080/price-adjustment" page
    When User enters order number "ORD33445"
    And User enters adjustment amount ""
    And User clicks "Apply Adjustment" button
    Then The error message should display "Adjustment amount cannot be empty."

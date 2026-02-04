Feature: Order Price Adjustment Functionality - Negative Test Cases

  Scenario: Price Adjustment with an Invalid Price Value
    Given User is on the "Price Adjustment" page
    When User enters order number "ORD456"
    And User enters new price "-10.00"
    And User submits the price adjustment
    Then The error message should display "Invalid price value. Price must be positive."

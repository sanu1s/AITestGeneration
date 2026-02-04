Feature: Order Price Adjustment Functionality - Negative Test Cases

  Scenario: Price Adjustment for a Non-existent Order
    Given User is on the "Price Adjustment" page
    When User enters order number "NONEXISTENT123"
    And User enters new price "99.99"
    And User submits the price adjustment
    Then The error message should display "Order NONEXISTENT123 not found."

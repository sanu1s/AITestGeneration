Feature: Order Price Adjustment Functionality - Positive Test Cases

  Scenario: Successful Price Adjustment for Another Existing Order
    Given User is on the "Price Adjustment" page
    When User enters order number "ORD123"
    And User enters new price "25.00"
    And User submits the price adjustment
    Then The success message should display "Price for order ORD123 adjusted to $25.00 successfully."

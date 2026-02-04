Feature: Order Price Adjustment Functionality - Positive Test Cases

  Scenario: Successful Price Adjustment for an Existing Order
    Given User is on the "Price Adjustment" page
    When User enters order number "ORD789"
    And User enters new price "150.75"
    And User submits the price adjustment
    Then The success message should display "Price for order ORD789 adjusted to $150.75 successfully."

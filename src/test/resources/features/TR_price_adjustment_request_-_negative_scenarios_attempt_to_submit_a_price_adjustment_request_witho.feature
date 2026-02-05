Feature: Price Adjustment Request - Negative Scenarios

  Scenario: Attempt to submit a price adjustment request without an order number
    Given User is on the "Price Adjustment Request" page
    When User enters item name "Laptop XYZ"
    And User enters reason "Item is now on sale"
    And User clicks "Submit Request" button
    Then An error message "Order number is required." should be displayed

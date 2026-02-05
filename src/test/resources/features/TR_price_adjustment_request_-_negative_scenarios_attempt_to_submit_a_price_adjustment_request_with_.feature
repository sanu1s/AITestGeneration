Feature: Price Adjustment Request - Negative Scenarios

  Scenario: Attempt to submit a price adjustment request with an invalid order number format
    Given User is on the "Price Adjustment Request" page
    When User enters order number "INVALID"
    And User enters item name "Laptop XYZ"
    And User enters reason "Item is now on sale"
    And User clicks "Submit Request" button
    Then An error message "Please enter a valid order number." should be displayed

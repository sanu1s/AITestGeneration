Feature: Price Adjustment Request - Positive Scenarios

  Scenario: Successfully submit a price adjustment request for a valid order
    Given User is on the "Price Adjustment Request" page
    When User enters order number "PA12345"
    And User enters item name "Laptop XYZ"
    And User enters reason "Item is now on sale for $999.99"
    And User clicks "Submit Request" button
    Then A success message "Your price adjustment request for order PA12345 has been submitted successfully." should be displayed

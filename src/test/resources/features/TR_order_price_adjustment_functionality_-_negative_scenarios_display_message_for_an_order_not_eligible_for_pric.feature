Feature: Order Price Adjustment Functionality - Negative Scenarios

  Scenario: Display message for an order not eligible for price adjustment
    Given User is on the "order tracking" page
    When User enters order number "OLDORDER789"
    And User clicks the "Track Order" button
    Then The status message should display "Order OLDORDER789 is not eligible for price adjustment due to policy or item not on sale."

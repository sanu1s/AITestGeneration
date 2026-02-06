Feature: Price Adjustment Request - Negative Scenarios

  Scenario: Order not eligible for price adjustment
    Given User is on the order tracking page
    When User enters order number "NO_PA_ORD_789"
    And User clicks the "Track Order" button
    Then The error message should display "Order NO_PA_ORD_789 is not eligible for a price adjustment."

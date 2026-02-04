Feature: Order Tracking - Monogram Capitalization Display (Positive Scenarios)

  Scenario: Verify monogram displayed with correct capitalization for another valid order
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The status message should display "Order details for ORD23456 and Monogram: Xyz"

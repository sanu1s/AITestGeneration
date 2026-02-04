Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Track another valid order number
    Given User is on the order tracking page
    When User enters order number "ORD987654321"
    And User clicks the Track Order button
    Then The status message should display "Order ORD987654321 has been shipped."

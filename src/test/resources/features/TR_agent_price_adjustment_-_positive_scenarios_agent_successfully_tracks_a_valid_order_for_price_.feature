Feature: Agent Price Adjustment - Positive Scenarios

  Scenario: Agent successfully tracks a valid order for price adjustment
    Given Agent is on the order tracking page
    When Agent enters order number "ORD12345"
    And Agent clicks the "Track Order" button
    Then The order status should display "Order ORD12345 found. Ready for adjustment."

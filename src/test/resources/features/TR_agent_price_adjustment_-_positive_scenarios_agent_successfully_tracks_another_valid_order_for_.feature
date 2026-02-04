Feature: Agent Price Adjustment - Positive Scenarios

  Scenario: Agent successfully tracks another valid order for price adjustment
    Given Agent is on the order tracking page
    When Agent enters order number "ORD98765"
    And Agent clicks the "Track Order" button
    Then The order status should display "Order ORD98765 found. Ready for adjustment."

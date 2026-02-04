Feature: Order Tracking by Agent - Positive Scenarios

  Scenario: Agent successfully tracks a valid order
    Given Agent is on the order tracking page
    When Agent enters order number "ORD12345"
    And clicks the Track Order button
    Then The status message should display "Order ORD12345 is Shipped"

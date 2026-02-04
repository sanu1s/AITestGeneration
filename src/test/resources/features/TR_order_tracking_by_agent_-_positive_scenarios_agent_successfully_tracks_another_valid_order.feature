Feature: Order Tracking by Agent - Positive Scenarios

  Scenario: Agent successfully tracks another valid order
    Given Agent is on the order tracking page
    When Agent enters order number "ORD67890"
    And clicks the Track Order button
    Then The status message should display "Order ORD67890 is Delivered"

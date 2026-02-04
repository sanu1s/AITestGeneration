Feature: Order Tracking by Agent - Negative Scenarios

  Scenario: Agent tries to track an invalid order number
    Given Agent is on the order tracking page
    When Agent enters order number "INVALID001"
    And clicks the Track Order button
    Then The error message should display "Order INVALID001 not found."

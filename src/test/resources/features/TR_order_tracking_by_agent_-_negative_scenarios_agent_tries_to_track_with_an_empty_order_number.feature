Feature: Order Tracking by Agent - Negative Scenarios

  Scenario: Agent tries to track with an empty order number
    Given Agent is on the order tracking page
    When Agent enters order number ""
    And clicks the Track Order button
    Then The error message should display "Order number cannot be empty."

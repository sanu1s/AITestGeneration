Feature: Agent Order Tracking Functionality - Positive Scenarios

  Scenario: Agent successfully tracks an order with a valid order number
    Given Agent is on the order tracking page
    When Agent enters order number "AGENTORD123"
    And Agent clicks the "Track Order" button
    Then The order status should display "Order delivered on 2023-10-26"

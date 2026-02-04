Feature: Agent Order Tracking Functionality - Positive Scenarios

  Scenario: Agent successfully tracks another order with a different valid order number
    Given Agent is on the order tracking page
    When Agent enters order number "AGENTORD456"
    And Agent clicks the "Track Order" button
    Then The order status should display "Order in transit"

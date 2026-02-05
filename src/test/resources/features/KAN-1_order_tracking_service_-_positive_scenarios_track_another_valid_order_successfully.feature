Feature: Order Tracking Service - Positive Scenarios

  Scenario: Track another valid order successfully
    Given User is on the order tracking page
    When User enters order number "ORD456"
    And User clicks the "Track Order" button
    Then The order status should be displayed as "The order status Delayed"

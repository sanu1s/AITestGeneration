Feature: Order Status Tracking - Positive Scenarios

  Scenario: Track another valid order number
    Given User is on the Order Tracking page
    When User enters order number "67890"
    And User clicks the Track Order button
    Then The order status should be displayed as "The order status Delayed"

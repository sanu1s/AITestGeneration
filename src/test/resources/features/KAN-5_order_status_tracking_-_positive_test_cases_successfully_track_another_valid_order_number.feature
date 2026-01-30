Feature: Order Status Tracking - Positive Test Cases

  Scenario: Successfully track another valid order number
    Given User is on the order tracking page
    When User enters order number "98765"
    And User clicks the Track Order button
    Then The order status should be "The order status Delayed"

Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid two-digit order number
    Given User is on the order tracking page
    When User enters order number "12"
    And User clicks the Track Order button
    Then The order status should be displayed as "The order status Delayed"

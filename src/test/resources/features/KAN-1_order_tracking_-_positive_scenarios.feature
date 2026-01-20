Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD12345" and clicks 'Track Order'
    Then The order status should be "Delayed" with delivery date "2024-12-31"

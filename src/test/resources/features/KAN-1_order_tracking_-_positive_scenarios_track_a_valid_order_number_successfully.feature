Feature: Order Tracking - Positive Scenarios

  Scenario: Track a valid order number successfully
    Given User is on the order tracking page
    When User enters order number "ORD12345" and clicks 'Track Order'
    Then The status message should display "Order ORD12345 is Delayed. Estimated Delivery Date: 2024-12-31"

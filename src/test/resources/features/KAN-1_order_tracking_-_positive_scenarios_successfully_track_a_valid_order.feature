Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The URL should be "http://127.0.0.1:8000/order/tracking"
    And The result message should contain "The order status Delayed"

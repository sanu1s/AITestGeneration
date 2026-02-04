Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order and verify status
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Your order is currently being prepared for shipment. Here are the details:"
    And The current URL should be "https://example.com/track-order/ORD12345"

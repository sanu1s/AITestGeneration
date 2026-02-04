Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid order with 'Delivered' status
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 is Delivered"

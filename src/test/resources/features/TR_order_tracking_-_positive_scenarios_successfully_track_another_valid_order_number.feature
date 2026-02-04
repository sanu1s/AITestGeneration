Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid order number
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "ORD987654321"
    And User clicks the "Track Order" button
    Then The order status should display "Order Status: Delivered"

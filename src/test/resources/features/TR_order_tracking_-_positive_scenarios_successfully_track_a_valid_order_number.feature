Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order number
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "181984000000"
    And User clicks the "Track Order" button
    Then The order status should display "Order Status: Shipped"

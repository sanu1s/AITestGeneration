Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another order with different valid order number and billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD67890" and billing zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should display "Order Found: Shipped"

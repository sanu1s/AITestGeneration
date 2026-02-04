Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track an order with correct shipping address
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks "Track Order" button
    Then The order status should display "Order placed, shipping to 123 Main St, Anytown, 10001"

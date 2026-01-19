Feature: Order Tracking

  Scenario: Tracking a delayed order with specific number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status "Delayed" should be displayed
    And "Delivery Date" should be displayed

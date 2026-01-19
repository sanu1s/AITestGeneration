Feature: Order Tracking Functionality

  Scenario: Successfully track a specific order with a known delayed status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    When User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The order details should include "Delivery Date"

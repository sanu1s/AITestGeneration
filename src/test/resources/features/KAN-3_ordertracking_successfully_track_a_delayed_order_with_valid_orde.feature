Feature: OrderTracking

  Scenario: Successfully track a delayed order with valid order number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
    And The order details should include "Delivery Date"

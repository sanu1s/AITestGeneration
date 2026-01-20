Feature: OrderTracking.feature

  Scenario: Successful order tracking for a delayed order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The result should contain "Delivery Date"

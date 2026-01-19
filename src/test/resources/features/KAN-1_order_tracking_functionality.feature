Feature: Order Tracking Functionality

  Scenario: Track a specific order with known status and details
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The order details should show "Delivery Date"

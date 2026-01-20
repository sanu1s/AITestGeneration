Feature: OrderTracking.feature

  Scenario: Track a valid order successfully
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The result should display "Expected Delivery Date: 2024-12-31"

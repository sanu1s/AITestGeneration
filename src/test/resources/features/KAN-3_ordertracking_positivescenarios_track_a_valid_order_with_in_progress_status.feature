Feature: OrderTracking_PositiveScenarios

  Scenario: Track a valid order with In Progress status
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "In Good Hands and In Progress with the carrier"
    And The URL should remain "http://127.0.0.1:8000/order/tracking"

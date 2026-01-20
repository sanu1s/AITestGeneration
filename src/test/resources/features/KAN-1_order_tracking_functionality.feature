Feature: Order Tracking Functionality

  Scenario: Track a delayed order successfully
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The delivery date should be "2024-12-31"

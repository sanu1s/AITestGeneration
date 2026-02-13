Feature: OrderTracking_PositiveScenarios_ValidOrderNumbers

  Scenario: Track a valid 5-digit order number
    Given User is on the order tracking page
    When User enters order number "54321"
    And User clicks the "Track Order" button
    Then The order status should be "The order status Delayed"

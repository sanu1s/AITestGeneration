Feature: OrderTracking_PositiveScenarios

  Scenario: Track a valid order number with delayed status
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed" and delivery date "2024-12-31"

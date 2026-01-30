Feature: OrderTracking_PositiveScenarios

  Scenario: Track a valid order successfully
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The result message should display "The order status Delayed"

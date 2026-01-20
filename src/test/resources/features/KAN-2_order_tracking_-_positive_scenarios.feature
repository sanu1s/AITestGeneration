Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a delayed order with delivery date
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed" and delivery date "2024-07-20"

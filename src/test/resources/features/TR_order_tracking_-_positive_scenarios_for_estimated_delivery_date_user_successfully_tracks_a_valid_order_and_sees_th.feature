Feature: Order Tracking - Positive Scenarios for Estimated Delivery Date

  Scenario: User successfully tracks a valid order and sees the correct estimated delivery date
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 Estimated Delivery: 2023-12-31"

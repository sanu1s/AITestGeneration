Feature: Order Tracking - Positive Scenarios for Estimated Delivery Date

  Scenario: User successfully tracks another valid order and sees a different correct estimated delivery date
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD67890 Estimated Delivery: 2024-01-15"

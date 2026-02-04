Feature: Order Tracking - Verify Address Display (Negative Scenarios)

  Scenario: Order displays old address after attempted update for specific order
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The order details should include "Old Address: 123 Main St"

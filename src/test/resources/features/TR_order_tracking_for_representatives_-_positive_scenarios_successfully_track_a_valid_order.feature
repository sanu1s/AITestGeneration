Feature: Order Tracking for Representatives - Positive Scenarios

  Scenario: Successfully Track a Valid Order
    Given the representative is on the order tracking page "https://example.com/trackorder"
    When the representative enters order number "ORD78901"
    And clicks the "Track Order" button
    Then the status message should display "Order ORD78901 is Shipped"

Feature: Order Tracking - Negative Discount Verification

  Scenario: Order with expected 20% discount is not shown
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD_MISSING20"
    And User clicks the "Track Order" button
    Then The order status message should display "Order ORD_MISSING20 found. Discount not applied or visible."

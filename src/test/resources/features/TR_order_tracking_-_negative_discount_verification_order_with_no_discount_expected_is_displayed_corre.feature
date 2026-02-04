Feature: Order Tracking - Negative Discount Verification

  Scenario: Order with no discount expected is displayed correctly
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD_NODISCOUNT"
    And User clicks the "Track Order" button
    Then The order status message should display "Order ORD_NODISCOUNT found. No discount applied."

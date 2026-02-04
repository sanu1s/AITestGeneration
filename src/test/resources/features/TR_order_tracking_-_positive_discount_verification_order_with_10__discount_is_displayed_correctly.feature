Feature: Order Tracking - Positive Discount Verification

  Scenario: Order with 10% Discount is displayed correctly
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD_DISCOUNT10"
    And User clicks the "Track Order" button
    Then The order status message should display "Order ORD_DISCOUNT10 found. 10% discount applied."

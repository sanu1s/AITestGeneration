Feature: Order Tracking Functionality - Discount Validation - Positive Cases

  Scenario: Verify another valid 20% discount is honored for a different order
    Given User navigates to "https://example.com/track-order"
    When User enters order number "ORD54321"
    And User clicks on "Track Order" button
    Then The status message should display "Order ORD54321 has a 20% discount applied."

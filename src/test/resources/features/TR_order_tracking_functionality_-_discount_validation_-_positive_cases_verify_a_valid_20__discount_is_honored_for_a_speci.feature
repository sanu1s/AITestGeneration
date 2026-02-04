Feature: Order Tracking Functionality - Discount Validation - Positive Cases

  Scenario: Verify a valid 20% discount is honored for a specific order
    Given User navigates to "https://example.com/track-order"
    When User enters order number "ORD12345"
    And User clicks on "Track Order" button
    Then The status message should display "Order ORD12345 has a 20% discount applied."

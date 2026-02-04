Feature: Order Tracking Functionality - Discount Validation - Negative Cases

  Scenario: Verify another expired 20% discount for a different order is not honored
    Given User navigates to "https://example.com/track-order"
    When User enters order number "ORD98765"
    And User clicks on "Track Order" button
    Then The error message should display "We would not be able to honor the 20% off."

Feature: Order Tracking Functionality - Discount Validation - Negative Cases

  Scenario: Verify expired 20% discount for a specific order is not honored
    Given User navigates to "https://example.com/track-order"
    When User enters order number "ORD45678"
    And User clicks on "Track Order" button
    Then The error message should display "We would not be able to honor the 20% off."

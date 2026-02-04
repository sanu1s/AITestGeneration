Feature: Order Tracking - Billing Zip Code Verification (Negative Scenarios)

  Scenario: Display error for empty billing zip code for ORD12345
    Given User is on the order tracking page "https://example.com/track-order"
    And User enters order number "ORD12345"
    And User clicks "Track Order" button
    When User enters billing zip code ""
    And User clicks "Verify Zip" button
    Then The error message should display "Billing zip code cannot be empty."

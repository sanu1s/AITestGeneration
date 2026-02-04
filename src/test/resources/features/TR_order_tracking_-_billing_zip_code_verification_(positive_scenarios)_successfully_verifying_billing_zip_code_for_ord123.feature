Feature: Order Tracking - Billing Zip Code Verification (Positive Scenarios)

  Scenario: Successfully verifying billing zip code for ORD12345
    Given User is on the order tracking page "https://example.com/track-order"
    And User enters order number "ORD12345"
    And User clicks "Track Order" button
    When User enters billing zip code "90210"
    And User clicks "Verify Zip" button
    Then The order details should display "Order details for ORD12345"

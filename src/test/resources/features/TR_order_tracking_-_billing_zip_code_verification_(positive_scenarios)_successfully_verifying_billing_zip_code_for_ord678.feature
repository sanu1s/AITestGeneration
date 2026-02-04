Feature: Order Tracking - Billing Zip Code Verification (Positive Scenarios)

  Scenario: Successfully verifying billing zip code for ORD67890
    Given User is on the order tracking page "https://example.com/track-order"
    And User enters order number "ORD67890"
    And User clicks "Track Order" button
    When User enters billing zip code "10001"
    And User clicks "Verify Zip" button
    Then The order details should display "Order details for ORD67890"

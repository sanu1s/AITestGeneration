Feature: Order Tracking - Billing Zip Code Verification (Positive Cases)

  Scenario: User successfully verifies another order with a different correct billing zip code
    Given User is on the Order Tracking page
    When User enters order number "ORD24680"
    And User clicks the "Track Order" button
    And The system requests "billing zip code for verification"
    And User enters billing zip code "10001"
    And User clicks the "Verify" button
    Then The order status should display "Order verified. Details shown."

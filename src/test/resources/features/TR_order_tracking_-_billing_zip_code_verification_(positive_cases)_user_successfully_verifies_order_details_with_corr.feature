Feature: Order Tracking - Billing Zip Code Verification (Positive Cases)

  Scenario: User successfully verifies order details with correct billing zip code
    Given User is on the Order Tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    And The system requests "billing zip code for verification"
    And User enters billing zip code "90210"
    And User clicks the "Verify" button
    Then The order status should display "Order verified. Details shown."

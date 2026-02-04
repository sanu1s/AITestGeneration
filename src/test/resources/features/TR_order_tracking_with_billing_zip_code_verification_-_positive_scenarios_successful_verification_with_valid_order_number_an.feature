Feature: Order Tracking with Billing Zip Code Verification - Positive Scenarios

  Scenario: Successful verification with valid order number and billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    And User is prompted for billing zip code verification
    And User enters billing zip code "90210"
    And User clicks the "Verify" button
    Then The order status should display "Order ORD78901 verified. Status: Shipped."

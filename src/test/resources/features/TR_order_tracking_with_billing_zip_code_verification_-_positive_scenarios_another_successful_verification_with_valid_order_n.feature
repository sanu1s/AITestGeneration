Feature: Order Tracking with Billing Zip Code Verification - Positive Scenarios

  Scenario: Another successful verification with valid order number and billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    And User is prompted for billing zip code verification
    And User enters billing zip code "10001"
    And User clicks the "Verify" button
    Then The order status should display "Order ORD12345 verified. Status: Delivered."

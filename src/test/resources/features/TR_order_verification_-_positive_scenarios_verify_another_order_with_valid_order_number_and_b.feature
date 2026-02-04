Feature: Order Verification - Positive Scenarios

  Scenario: Verify another order with valid order number and billing zip code
    Given User is on the order verification page "https://example.com/order-verification"
    When User enters order number "ORD12345"
    And User enters billing zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should display "Order Found: Processing - Expected Ship Date: 2024-07-28"

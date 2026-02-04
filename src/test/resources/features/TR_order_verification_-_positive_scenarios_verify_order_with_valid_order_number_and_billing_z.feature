Feature: Order Verification - Positive Scenarios

  Scenario: Verify order with valid order number and billing zip code
    Given User is on the order verification page "https://example.com/order-verification"
    When User enters order number "ORD78901"
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order Found: Shipped - Estimated Delivery: 2024-07-25"

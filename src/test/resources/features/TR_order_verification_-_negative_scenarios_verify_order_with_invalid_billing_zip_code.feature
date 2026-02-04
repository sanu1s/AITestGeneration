Feature: Order Verification - Negative Scenarios

  Scenario: Verify order with invalid billing zip code
    Given User is on the order verification page "https://example.com/order-verification"
    When User enters order number "ORD78901"
    And User enters billing zip code "00000"
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code does not match records for this order."

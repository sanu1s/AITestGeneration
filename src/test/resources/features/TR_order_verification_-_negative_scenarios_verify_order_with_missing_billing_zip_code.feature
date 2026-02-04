Feature: Order Verification - Negative Scenarios

  Scenario: Verify order with missing billing zip code
    Given User is on the order verification page "https://example.com/order-verification"
    When User enters order number "ORD78901"
    And User enters billing zip code ""
    And User clicks the "Track Order" button
    Then The error message should display "Please provide the billing zip code."

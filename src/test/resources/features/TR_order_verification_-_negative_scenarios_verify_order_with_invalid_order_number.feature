Feature: Order Verification - Negative Scenarios

  Scenario: Verify order with invalid order number
    Given User is on the order verification page "https://example.com/order-verification"
    When User enters order number "INV00000"
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."

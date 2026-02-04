Feature: Order Verification for Defective Items - Negative Scenarios

  Scenario: Verification with invalid order number format (too long)
    Given User is on the order verification page
    When User enters order number "ORD1234567890123" and billing zip code "90210"
    And User clicks the "Verify" button
    Then The error message should display "Order number must be 10-12 characters long."

Feature: Order Verification for Defective Items - Negative Scenarios

  Scenario: Verification with invalid billing zip code
    Given User is on the order verification page
    When User enters order number "ORD123456789" and billing zip code "INVALID"
    And User clicks the "Verify" button
    Then The error message should display "Invalid billing zip code."

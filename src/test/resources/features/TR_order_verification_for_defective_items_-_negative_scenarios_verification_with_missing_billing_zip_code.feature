Feature: Order Verification for Defective Items - Negative Scenarios

  Scenario: Verification with missing billing zip code
    Given User is on the order verification page
    When User enters order number "ORD123456789" and billing zip code ""
    And User clicks the "Verify" button
    Then The error message should display "Billing zip code is required."

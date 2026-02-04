Feature: Order Verification for Defective Items - Negative Scenarios

  Scenario: Verification with missing order number
    Given User is on the order verification page
    When User enters order number "" and billing zip code "90210"
    And User clicks the "Verify" button
    Then The error message should display "Order number is required."

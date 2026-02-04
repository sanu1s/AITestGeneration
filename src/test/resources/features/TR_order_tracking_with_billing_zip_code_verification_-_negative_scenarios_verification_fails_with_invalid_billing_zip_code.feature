Feature: Order Tracking with Billing Zip Code Verification - Negative Scenarios

  Scenario: Verification fails with invalid billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    And User is prompted for billing zip code verification
    And User enters billing zip code "00000"
    And User clicks the "Verify" button
    Then The error message should display "Incorrect billing zip code. Please try again."

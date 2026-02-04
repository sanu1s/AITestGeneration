Feature: Order Tracking with Billing Zip Code Verification - Negative Scenarios

  Scenario: Verification fails with empty billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    And User is prompted for billing zip code verification
    And User enters billing zip code ""
    And User clicks the "Verify" button
    Then The error message should display "Billing zip code cannot be empty."

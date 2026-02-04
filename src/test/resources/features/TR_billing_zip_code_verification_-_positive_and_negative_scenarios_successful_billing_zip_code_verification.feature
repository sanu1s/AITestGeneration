Feature: Billing Zip Code Verification - Positive and Negative Scenarios

  Scenario: Successful Billing Zip Code Verification
    Given User is on the order verification page
    When User enters billing zip code "90210"
    And User clicks "Verify Zip Code" button
    Then The status message should display "Order details retrieved successfully."

Feature: Billing Zip Code Verification - Positive and Negative Scenarios

  Scenario: Billing Zip Code Verification with Empty Input
    Given User is on the order verification page
    When User enters billing zip code ""
    And User clicks "Verify Zip Code" button
    Then The error message should display "Billing zip code is required."

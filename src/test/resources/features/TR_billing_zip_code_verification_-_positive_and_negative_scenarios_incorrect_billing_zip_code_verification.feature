Feature: Billing Zip Code Verification - Positive and Negative Scenarios

  Scenario: Incorrect Billing Zip Code Verification
    Given User is on the order verification page
    When User enters billing zip code "12345"
    And User clicks "Verify Zip Code" button
    Then The error message should display "Incorrect billing zip code. Please try again."

Feature: Return Eligibility Check - Negative Scenarios

  Scenario: Verify error for invalid billing zip code
    Given User is on the return eligibility page
    When User enters order number "AWCHAIR12345"
    And User enters billing zip code "11111"
    And User clicks "Check Eligibility" button
    Then The error message should display "Billing zip code does not match order."

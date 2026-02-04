Feature: Return Eligibility Check - Negative Scenarios

  Scenario: Verify error when billing zip code is left empty
    Given User is on the return eligibility page
    When User enters order number "AWCHAIR12345"
    And User leaves billing zip code field empty
    And User clicks "Check Eligibility" button
    Then The error message should display "Please provide a billing zip code."

Feature: Return Eligibility Check - Negative Scenarios

  Scenario: Verify error when order number is left empty
    Given User is on the return eligibility page
    When User leaves order number field empty
    And User enters billing zip code "90210"
    And User clicks "Check Eligibility" button
    Then The error message should display "Please provide an order number."

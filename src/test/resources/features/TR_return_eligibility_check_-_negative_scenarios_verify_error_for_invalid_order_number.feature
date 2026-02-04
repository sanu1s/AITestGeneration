Feature: Return Eligibility Check - Negative Scenarios

  Scenario: Verify error for invalid order number
    Given User is on the return eligibility page
    When User enters order number "INVALIDORDER"
    And User enters billing zip code "90210"
    And User clicks "Check Eligibility" button
    Then The error message should display "Order number not found."

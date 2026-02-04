Feature: Return Eligibility Check - Positive Scenarios

  Scenario: Verify return eligibility with another set of valid order number and zip code
    Given User is on the return eligibility page
    When User enters order number "AWCHAIR54321"
    And User enters billing zip code "10001"
    And User clicks "Check Eligibility" button
    Then The eligibility message should display "Your item is eligible for return."

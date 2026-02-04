Feature: Disposal Service Eligibility - Positive Scenarios

  Scenario: User successfully finds information about disposing a broken dining chair
    Given User is on the "Disposal Services" page
    When User enters "broken dining chair" into the query field
    And User clicks the "Check Eligibility" button
    Then The eligibility status should display "Yes, we dispose of broken dining chairs."

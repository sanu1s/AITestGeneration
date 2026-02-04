Feature: Disposal Service Eligibility - Negative Scenarios

  Scenario: User finds negative information for an unsupported item
    Given User is on the "Disposal Services" page
    When User enters "old refrigerator" into the query field
    And User clicks the "Check Eligibility" button
    Then The error message should display "Sorry, we do not dispose of 'old refrigerator'."

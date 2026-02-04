Feature: Disposal Service Eligibility - Negative Scenarios

  Scenario: User finds error for an empty query
    Given User is on the "Disposal Services" page
    When User leaves the query field empty
    And User clicks the "Check Eligibility" button
    Then The error message should display "Please enter an item to check eligibility."

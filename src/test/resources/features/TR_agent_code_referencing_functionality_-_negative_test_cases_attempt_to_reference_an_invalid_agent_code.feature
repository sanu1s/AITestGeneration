Feature: Agent Code Referencing Functionality - Negative Test Cases

  Scenario: Attempt to reference an invalid agent code
    Given User is on the agent code referencing page
    When User enters agent code "INVALID123"
    And User clicks the "Reference Agent" button
    Then The error message should display "Agent code 'INVALID123' not found."

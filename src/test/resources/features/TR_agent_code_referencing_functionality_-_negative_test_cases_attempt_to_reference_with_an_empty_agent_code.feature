Feature: Agent Code Referencing Functionality - Negative Test Cases

  Scenario: Attempt to reference with an empty agent code
    Given User is on the agent code referencing page
    When User leaves the agent code field empty
    And User clicks the "Reference Agent" button
    Then The error message should display "Agent code cannot be empty."

Feature: Business Hours Query Functionality - Negative Test Cases

  Scenario: Display error for empty query
    Given User is on the query page
    When User enters "" into the input field
    And User clicks the "Track Order" button
    Then The error message should display "Please enter your query to proceed."

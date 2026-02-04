Feature: Business Hours Query Functionality - Negative Test Cases

  Scenario: Display error for irrelevant query
    Given User is on the query page
    When User enters "Tell me a joke" into the input field
    And User clicks the "Track Order" button
    Then The error message should display "I'm sorry, I can only provide information related to business operations."

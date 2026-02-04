Feature: Order Retrieval by Billing Zip Code - Negative Scenarios

  Scenario: Display validation error for an incorrectly formatted billing zip code
    Given I am on the order retrieval page
    When I enter billing zip code "123"
    And I click the "Retrieve Order" button
    Then The error message should display "Please enter a valid 5-digit billing zip code."

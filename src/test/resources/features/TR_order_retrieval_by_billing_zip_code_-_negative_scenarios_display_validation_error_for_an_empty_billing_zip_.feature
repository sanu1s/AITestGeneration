Feature: Order Retrieval by Billing Zip Code - Negative Scenarios

  Scenario: Display validation error for an empty billing zip code
    Given I am on the order retrieval page
    When I enter billing zip code ""
    And I click the "Retrieve Order" button
    Then The error message should display "Please enter a billing zip code."

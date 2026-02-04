Feature: Order Retrieval by Billing Zip Code - Negative Scenarios

  Scenario: Display error for an invalid billing zip code
    Given I am on the order retrieval page
    When I enter billing zip code "99999"
    And I click the "Retrieve Order" button
    Then The error message should display "Order not found for the provided billing zip code."

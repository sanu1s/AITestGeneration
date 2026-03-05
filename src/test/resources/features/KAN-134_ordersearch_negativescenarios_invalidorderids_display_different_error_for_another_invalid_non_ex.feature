Feature: OrderSearch_NegativeScenarios_InvalidOrderIDs

  Scenario: Display different error for another invalid/non-existent Order ID
    Given I am on the Order Search page
    When I select "Order ID" from the search type dropdown
    And I enter "NONEXISTENT999" into the order ID input field
    And I click the "Search" button
    Then the error message section should be visible
    And the error message should display "No results for this Order Number"
    And the order details section should be hidden

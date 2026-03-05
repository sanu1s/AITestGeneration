Feature: OrderSearch_NegativeScenarios_InvalidOrderIDs

  Scenario: Display error for an invalid/non-existent Order ID
    Given I am on the Order Search page
    When I select "Order ID" from the search type dropdown
    And I enter "INVALID123" into the order ID input field
    And I click the "Search" button
    Then the error message section should be visible
    And the error message should display "Order not found"
    And the order details section should be hidden

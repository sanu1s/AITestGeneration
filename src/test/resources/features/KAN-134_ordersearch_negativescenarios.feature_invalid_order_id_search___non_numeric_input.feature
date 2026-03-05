Feature: OrderSearch_NegativeScenarios.feature

  Scenario: Invalid Order ID Search - Non-numeric Input
    Given I am on the Order Search page
    When I enter "INVALID123" into the "Order ID" field
    And I click the "Search" button
    Then the search results area should display an error message "Order number must be numeric"
    And the Error section should be visible
    And the Error Message paragraph should be visible
    And the Order Details section should be empty

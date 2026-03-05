Feature: OrderSearch_NegativeScenarios.feature

  Scenario: Invalid Order ID Search - Empty Input
    Given I am on the Order Search page
    When I enter "" into the "Order ID" field
    And I click the "Search" button
    Then I should see a validation message indicating "Order number must be numeric"
    And the Error section should be visible
    And the Error Message paragraph should be visible
    And the Order Details section should be empty

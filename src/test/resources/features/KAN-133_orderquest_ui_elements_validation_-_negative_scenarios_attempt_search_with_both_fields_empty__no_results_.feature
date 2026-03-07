Feature: OrderQuest UI Elements Validation - Negative Scenarios

  Scenario: Attempt search with both fields empty (no results expected)
    Given I am on the Order Search Page
    And I enter "" into the "Order Number" field
    And I enter "" into the "Tracking Number" field
    And I click the "Search" button
    Then the "Search Results" section should be "visible"
    And the "Search Results" should contain text ""

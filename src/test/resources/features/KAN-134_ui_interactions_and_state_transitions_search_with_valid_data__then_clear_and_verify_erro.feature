Feature: UI Interactions and State Transitions

  Scenario: Search with valid data, then clear and verify error state
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "ORD12345" into the "Order ID" field
    And I click the "Search" button
    Then the "orderDetails" section should be "visible"
    When I enter "" into the "Order ID" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "errorMessage" should display "Order number must be numeric"
    And the "orderDetails" section should be "hidden"

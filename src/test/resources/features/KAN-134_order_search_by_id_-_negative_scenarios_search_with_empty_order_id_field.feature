Feature: Order Search by ID - Negative Scenarios

  Scenario: Search with Empty Order ID Field
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "" into the "Order ID" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "errorMessage" should display "Order number must be numeric"
    And the "orderDetails" section should be "hidden"

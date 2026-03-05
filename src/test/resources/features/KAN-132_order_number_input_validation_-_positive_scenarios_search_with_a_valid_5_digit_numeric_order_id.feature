Feature: Order Number Input Validation - Positive Scenarios

  Scenario: Search with a valid 5-digit numeric Order ID
    Given I am on the Order Search Page
    When I select "Order ID" from the dropdown
    And I enter "12345" into the "Order Number" field
    And I click the "Search" button
    Then the "Order Details" section should be "visible"
    And the "error" section should be "hidden"

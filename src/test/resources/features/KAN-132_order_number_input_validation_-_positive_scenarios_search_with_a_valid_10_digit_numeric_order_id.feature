Feature: Order Number Input Validation - Positive Scenarios

  Scenario: Search with a valid 10-digit numeric Order ID
    Given I am on the Order Search Page
    When I select "Order ID" from the dropdown
    And I enter "0123456789" into the "Order Number" field
    And I click the "Search" button
    Then the "Order Details" section should be "visible"
    And the "error" section should be "hidden"

Feature: Order Number Input Validation - Negative Scenarios (Non-Numeric Input)

  Scenario: Attempt to search with special characters
    Given I am on the Order Search Page
    When I select "Order ID" from the dropdown
    And I enter "123!@#" into the "Order Number" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "errorMessage" should display "Order Number must be numeric"
    And the "Order Details" section should be "hidden"

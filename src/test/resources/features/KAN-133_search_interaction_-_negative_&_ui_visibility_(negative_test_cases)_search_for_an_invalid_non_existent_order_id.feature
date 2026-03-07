Feature: Search Interaction - Negative & UI Visibility (Negative Test Cases)

  Scenario: Search for an invalid/non-existent order ID
    Given I am on the Order Search Page
    And the "error" section should be hidden
    When I enter "INVALID123" into the "orderIdInput" field
    And I click the "Search" button
    Then the "error" section should be visible
    And the "errorMessage" should display "Error: No results found."
    And the "orderDetails" section should be empty

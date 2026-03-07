Feature: Search Interaction - Negative & UI Visibility (Negative Test Cases)

  Scenario: Attempt search with empty input
    Given I am on the Order Search Page
    And the "error" section should be hidden
    When I enter "" into the "orderIdInput" field
    And I click the "Search" button
    Then the "error" section should be visible
    And the "errorMessage" should display "Error: No search query provided."
    And the "orderDetails" section should be empty

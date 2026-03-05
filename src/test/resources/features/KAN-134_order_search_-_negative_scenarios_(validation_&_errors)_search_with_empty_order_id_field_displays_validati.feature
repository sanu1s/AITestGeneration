Feature: Order Search - Negative Scenarios (Validation & Errors)

  Scenario: Search with Empty Order ID Field Displays Validation Message
    Given I am on the Order Search Page
    And I ensure 'Order ID' is selected in the search type dropdown
    When I leave the order ID input field empty
    And I click the "Search" button
    Then the error message section should be visible
    And the error message should display "Order number must be numeric"
    And the order details section should be hidden

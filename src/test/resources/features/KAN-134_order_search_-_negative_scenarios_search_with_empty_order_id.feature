Feature: Order Search - Negative Scenarios

  Scenario: Search with Empty Order ID
    Given I am on the Order Search page
    And the error message area is hidden
    And the order details area is hidden
    When I select "Order ID" from the search type dropdown
    And I leave the order ID input field empty
    And I click the "Search" button
    Then the error message area should be visible
    And the error message paragraph should display "Order number must be numeric"
    And the order details area should be hidden

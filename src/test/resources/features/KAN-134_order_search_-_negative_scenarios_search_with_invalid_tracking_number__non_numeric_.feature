Feature: Order Search - Negative Scenarios

  Scenario: Search with Invalid Tracking Number (Non-Numeric)
    Given I am on the Order Search page
    And the error message area is hidden
    And the order details area is hidden
    When I select "Tracking Number" from the search type dropdown
    And I enter "INVALIDTRK" into the order ID input field
    And I click the "Search" button
    Then the error message area should be visible
    And the error message paragraph should display "Order number must be numeric"
    And the order details area should be hidden

Feature: UI Interaction & Edge Cases (Placeholder & Tracking Number)

  Scenario: Attempt Search with Tracking Number (UI interaction)
    Given I am on the Order Search Page
    When I select 'Tracking Number' from the search type dropdown
    And I enter a tracking number "TRACK12345" into the order ID input field
    And I click the "Search" button
    Then the order details section should be hidden
    And the error message section should be visible
    And the error message should display "Order number must be numeric"

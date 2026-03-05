Feature: OrderSearch_PositiveScenarios_ValidOrderIDs

  Scenario: Successfully search for another order using a different valid Order ID
    Given I am on the Order Search page
    When I select "Order ID" from the search type dropdown
    And I enter "ORD54321" into the order ID input field
    And I click the "Search" button
    Then the order details section should be visible
    And the order details section should display "789 Pine Ln, Cityville, USA"
    And the order details section should display "987 Elm Rd, Cityville, USA"
    And the order details section should display "2024-01-15"
    And the error message section should be hidden

Feature: OrderSearch_PositiveScenarios_ValidOrderIDs

  Scenario: Successfully search for an order using a valid Order ID
    Given I am on the Order Search page
    When I select "Order ID" from the search type dropdown
    And I enter "ORD12345" into the order ID input field
    And I click the "Search" button
    Then the order details section should be visible
    And the order details section should display "123 Main St, Anytown, USA"
    And the order details section should display "456 Oak Ave, Anytown, USA"
    And the order details section should display "2023-12-31"
    And the error message section should be hidden

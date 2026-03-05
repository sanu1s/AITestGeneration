Feature: Order Search - Positive Scenarios

  Scenario: Verify Initial State and Search with Another Valid Order ID
    Given I am on the Order Search Page
    Then the "orderDetails" section should be "visible"
    And the "error" section should be "hidden"
    And the "errorMessage" section should be "hidden"
    When I select "Order ID" from the search type dropdown
    And I enter "ORD67890" into the "orderIdInput" field
    And I click the "Search" button
    Then the "orderDetails" section should be "visible"
    And the "orderDetails" should contain text "789 Pine Ln, Otherville, USA"
    And the "orderDetails" should contain text "101 Elm Dr, Otherville, USA"
    And the "orderDetails" should contain text "2024-01-15"
    And the "error" section should be "hidden"
    And the "errorMessage" section should be "hidden"

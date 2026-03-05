Feature: OrderSearch_PositiveScenarios.feature

  Scenario: Successful Order ID Search - Second Order
    Given I am on the Order Search page
    When I enter "ORD67890" into the "Order ID" field
    And I click the "Search" button
    Then the search results area should display the Customer Shipping Address "789 Pine Ln, Otherville, CA"
    And the search results area should display the Customer Bill to Address "101 Elm St, Otherville, CA"
    And the search results area should display the Delivery Date "2024-01-15"
    And the Error section should be hidden
    And the Error Message paragraph should be hidden

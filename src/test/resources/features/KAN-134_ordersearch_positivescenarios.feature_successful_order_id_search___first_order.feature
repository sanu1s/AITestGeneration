Feature: OrderSearch_PositiveScenarios.feature

  Scenario: Successful Order ID Search - First Order
    Given I am on the Order Search page
    When I enter "ORD12345" into the "Order ID" field
    And I click the "Search" button
    Then the search results area should display the Customer Shipping Address "123 Main St, Anytown, USA"
    And the search results area should display the Customer Bill to Address "456 Oak Ave, Anytown, USA"
    And the search results area should display the Delivery Date "2023-12-31"
    And the Error section should be hidden
    And the Error Message paragraph should be hidden

Feature: Order Search by ID - Positive Scenarios

  Scenario: Another Successful Search with Valid Order ID
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "ORD98765" into the "Order ID" field
    And I click the "Search" button
    Then the "orderDetails" section should be "visible"
    And the "orderDetails" should contain text "789 Pine St, Cityville, CA"
    And the "orderDetails" should contain text "101 Elm St, Cityville, CA"
    And the "orderDetails" should contain text "2024-01-15"
    And the "error" section should be "hidden"

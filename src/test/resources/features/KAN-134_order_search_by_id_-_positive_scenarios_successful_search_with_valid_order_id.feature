Feature: Order Search by ID - Positive Scenarios

  Scenario: Successful Search with Valid Order ID
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "ORD12345" into the "Order ID" field
    And I click the "Search" button
    Then the "orderDetails" section should be "visible"
    And the "orderDetails" should contain text "123 Main St, Anytown, USA"
    And the "orderDetails" should contain text "456 Oak Ave, Anytown, USA"
    And the "orderDetails" should contain text "2023-12-31"
    And the "error" section should be "hidden"

Feature: Order Search - Positive Scenarios

  Scenario: Search for a third valid Order ID (55555)
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "55555" into the "orderIdInput" field
    And I click the "searchBtn" button
    Then the "orderDetails" section should be "visible"
    And the "orderDetails" should contain text "789 Pine Lane, Gotham City, NJ 07001"
    And the "orderDetails" should contain text "101 Elm St, Metropolis, NY 10001"
    And the "orderDetails" should contain text "2024-02-28"
    And the "error" section should be "hidden"

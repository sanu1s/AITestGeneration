Feature: Order Search - Positive Scenarios

  Scenario: Search for another valid Order ID (67890)
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "67890" into the "orderIdInput" field
    And I click the "searchBtn" button
    Then the "orderDetails" section should be "visible"
    And the "orderDetails" should contain text "456 Oak St, Othertown, USA"
    And the "orderDetails" should contain text "789 Pine Rd, Othertown, USA"
    And the "orderDetails" should contain text "2024-01-15"
    And the "error" section should be "hidden"

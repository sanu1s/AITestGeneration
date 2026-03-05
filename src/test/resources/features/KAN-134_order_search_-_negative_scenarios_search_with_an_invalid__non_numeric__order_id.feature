Feature: Order Search - Negative Scenarios

  Scenario: Search with an invalid (non-numeric) Order ID
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "INVALID123" into the "orderIdInput" field
    And I click the "searchBtn" button
    Then the "error" section should be "visible"
    And the "errorMessage" should display "Order number must be numeric"
    And the "orderDetails" section should be "hidden"

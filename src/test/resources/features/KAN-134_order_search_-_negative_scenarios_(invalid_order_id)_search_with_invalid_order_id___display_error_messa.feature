Feature: Order Search - Negative Scenarios (Invalid Order ID)

  Scenario: Search with Invalid Order ID - Display Error Message
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "INVALID123" into the "orderIdInput" field
    And I click the "Search" button
    Then the "orderDetails" section should be "hidden"
    And the "errorMessage" should display "Order number must be numeric"
    And the "errorMessage" section should be "visible"

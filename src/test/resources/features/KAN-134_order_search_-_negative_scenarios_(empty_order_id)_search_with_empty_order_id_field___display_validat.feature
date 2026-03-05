Feature: Order Search - Negative Scenarios (Empty Order ID)

  Scenario: Search with Empty Order ID Field - Display Validation Message
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    And I enter "" into the "orderIdInput" field
    And I click the "Search" button
    Then the "orderDetails" section should be "hidden"
    And the "errorMessage" should display "Order number must be numeric"
    And the "errorMessage" section should be "visible"

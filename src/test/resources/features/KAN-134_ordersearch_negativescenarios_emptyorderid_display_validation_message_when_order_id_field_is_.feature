Feature: OrderSearch_NegativeScenarios_EmptyOrderID

  Scenario: Display validation message when Order ID field is cleared and search is performed
    Given I am on the Order Search page
    When I select "Order ID" from the search type dropdown
    And I enter "TEMP123" into the order ID input field
    And I clear the order ID input field
    And I click the "Search" button
    Then the error message section should be visible
    And the error message should display "Order Number is required"
    And the order details section should be hidden

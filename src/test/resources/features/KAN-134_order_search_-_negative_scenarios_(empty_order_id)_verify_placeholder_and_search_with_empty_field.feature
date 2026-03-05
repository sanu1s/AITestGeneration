Feature: Order Search - Negative Scenarios (Empty Order ID)

  Scenario: Verify Placeholder and Search with Empty Field
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    Then the "orderIdInput" field should have placeholder "Enter Order ID"
    When I enter "" into the "orderIdInput" field
    And I click the "Search" button
    Then the "orderDetails" section should be "hidden"
    And the "errorMessage" should display "Order number must be numeric"
    And the "errorMessage" section should be "visible"

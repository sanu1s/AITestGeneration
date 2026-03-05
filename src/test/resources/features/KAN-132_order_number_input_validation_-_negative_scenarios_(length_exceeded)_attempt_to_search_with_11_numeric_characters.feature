Feature: Order Number Input Validation - Negative Scenarios (Length Exceeded)

  Scenario: Attempt to search with 11 numeric characters
    Given I am on the Order Search Page
    When I select "Order ID" from the dropdown
    And I enter "12345678901" into the "Order Number" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "errorMessage" should display "Order Number cannot exceed 10 characters"
    And the "Order Details" section should be "hidden"

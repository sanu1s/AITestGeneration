Feature: Order Search Page - UI Elements and State Transitions

  Scenario: Attempt to search with an empty Order Number field
    Given I am on the Order Search Page
    When I select "Order ID" from the dropdown
    And I enter "" into the "Order Number" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "errorMessage" should display "Order Number must be numeric"
    And the "Order Details" section should be "hidden"

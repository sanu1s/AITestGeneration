Feature: Tracking Number Search - Negative Scenarios

  Scenario: Search with Empty Tracking Number Field
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I enter "" into the "Tracking Number" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "errorMessage" should display "Tracking number cannot be empty."
    And the "orderDetails" section should be "hidden"

Feature: Tracking Number Search - Negative Scenarios

  Scenario: Search with Invalid Tracking Number (contains special characters)
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I enter "TRACKING#" into the "Tracking Number" field
    And I click the "Search" button
    Then the "error" section should be "visible"
    And the "errorMessage" should display "Tracking number not found or invalid format."
    And the "orderDetails" section should be "hidden"

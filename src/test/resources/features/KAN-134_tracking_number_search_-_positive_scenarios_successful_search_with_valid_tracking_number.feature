Feature: Tracking Number Search - Positive Scenarios

  Scenario: Successful Search with Valid Tracking Number
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I enter "TRK67890" into the "Tracking Number" field
    And I click the "Search" button
    Then the "orderDetails" section should be "visible"
    And the "orderDetails" should contain text "456 River Rd, Townsville, UK"
    And the "orderDetails" should contain text "789 Lake Dr, Townsville, UK"
    And the "orderDetails" should contain text "2023-11-20"
    And the "error" section should be "hidden"

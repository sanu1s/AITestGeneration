Feature: Tracking Number Search - Positive Scenarios

  Scenario: Another Successful Search with Valid Tracking Number
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I enter "TRK11223" into the "Tracking Number" field
    And I click the "Search" button
    Then the "orderDetails" section should be "visible"
    And the "orderDetails" should contain text "10 Downing St, London, UK"
    And the "orderDetails" should contain text "Buckingham Palace Rd, London, UK"
    And the "orderDetails" should contain text "2024-02-01"
    And the "error" section should be "hidden"

Feature: Product Search Functionality - Negative Scenarios

  Scenario: Search for a non-existent product
    Given User is on the product search page
    When User enters "NonExistentProductXYZ" into the search bar
    And User clicks the search button
    Then A message "No results found" should be displayed

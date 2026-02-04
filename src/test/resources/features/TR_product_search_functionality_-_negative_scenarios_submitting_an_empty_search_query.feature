Feature: Product Search Functionality - Negative Scenarios

  Scenario: Submitting an empty search query
    Given User is on the product search page
    When User enters "" into the search bar
    And User clicks the search button
    Then An error message "Please enter a search term" should be displayed

Feature: Product Search - Negative Scenarios

  Scenario: Search with an empty query
    Given User is on the product search page
    When User searches with an empty query
    Then A "Please enter a search term." error message should be displayed

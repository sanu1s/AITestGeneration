Feature: Product Search - Negative Scenarios

  Scenario: Search for a non-existent product
    Given User is on the product search page
    When User searches for product "NonExistent Toothbrush Holder"
    Then A "No results found for 'NonExistent Toothbrush Holder'." message should be displayed

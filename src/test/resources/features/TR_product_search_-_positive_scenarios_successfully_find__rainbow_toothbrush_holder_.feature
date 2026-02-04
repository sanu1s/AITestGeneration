Feature: Product Search - Positive Scenarios

  Scenario: Successfully find 'Rainbow toothbrush holder'
    Given User is on the product search page
    When User searches for product "Rainbow toothbrush holder"
    Then The product title should display "Rainbow toothbrush holder"

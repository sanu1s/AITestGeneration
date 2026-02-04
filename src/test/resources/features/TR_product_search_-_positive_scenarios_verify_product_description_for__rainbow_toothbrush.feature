Feature: Product Search - Positive Scenarios

  Scenario: Verify product description for 'Rainbow toothbrush holder'
    Given User is on the product search page
    When User searches for product "Rainbow toothbrush holder"
    Then The product description should contain "colorful and durable design"

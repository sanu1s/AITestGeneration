Feature: Product Search - Negative Cases

  Scenario: Search for a non-existent product
    Given User is on the e-commerce homepage
    When User searches for "XYZNonExistentProduct123"
    Then User should see a "No results found" message
    And The current URL should contain "/search?q=XYZNonExistentProduct123"

Feature: Product Search - Positive Cases

  Scenario: Successfully search for a product by name
    Given User is on the e-commerce homepage
    When User searches for "Rainbow comforter"
    Then User should see "Rainbow comforter" in the search results
    And The current URL should contain "/search?q=Rainbow+comforter"

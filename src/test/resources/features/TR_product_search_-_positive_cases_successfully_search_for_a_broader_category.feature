Feature: Product Search - Positive Cases

  Scenario: Successfully search for a broader category
    Given User is on the e-commerce homepage
    When User searches for "Bedding"
    Then User should see products related to "Bedding" in the search results
    And The current URL should contain "/search?q=Bedding"

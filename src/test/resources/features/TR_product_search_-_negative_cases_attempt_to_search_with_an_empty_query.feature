Feature: Product Search - Negative Cases

  Scenario: Attempt to search with an empty query
    Given User is on the e-commerce homepage
    When User searches with an empty query
    Then User should see an error message "Please enter a search term"
    And The current URL should be "https://www.example-ecommerce.com/"

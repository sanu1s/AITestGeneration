Feature: OrderSearchPage_MissingElements_NegativeTests

  Scenario: Verify Search button is enabled on initial load
    Given I am on the Order Search Page
    Then the "Search" button should be enabled

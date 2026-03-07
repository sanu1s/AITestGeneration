Feature: OrderSearchPage_MissingElements_NegativeTests

  Scenario: Verify no unexpected input fields are present
    Given I am on the Order Search Page
    Then the "NonExistentField" section should be "hidden"

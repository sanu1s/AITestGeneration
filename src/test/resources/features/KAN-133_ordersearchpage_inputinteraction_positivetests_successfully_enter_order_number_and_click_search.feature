Feature: OrderSearchPage_InputInteraction_PositiveTests

  Scenario: Successfully enter Order Number and click Search
    Given I am on the Order Search Page
    When I enter "67890" into the "Order Number" field
    And I click the "Search" button
    Then the "Order Number" field should contain text "67890"
    And the search results area should be empty

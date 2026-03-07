Feature: OrderSearchPage_InputInteraction_PositiveTests

  Scenario: Successfully enter Tracking Number and click Search
    Given I am on the Order Search Page
    When I enter "TRK55555" into the "Tracking Number" field
    And I click the "Search" button
    Then the "Tracking Number" field should contain text "TRK55555"
    And the search results area should be empty

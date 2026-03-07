Feature: OrderSearchPage_InitialLoad_PositiveTests

  Scenario: Verify all essential UI elements are present on initial load
    Given I am on the Order Search Page
    Then the "page title" should display "OrderQuest | Premium Order Search"
    And the "Order Number" field should have placeholder "Order Number"
    And the "Order Number" section should be "visible"
    And the "Tracking Number" field should have placeholder "Tracking Number"
    And the "Tracking Number" section should be "visible"
    And the "Search" button should be "visible"
    And the search results area should be empty

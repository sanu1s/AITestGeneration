Feature: Order Search - UI Interaction and State Changes

  Scenario: Verify initial UI state and placeholder for Order ID
    Given I am on the Order Search Page
    Then the "searchType" should display "Order ID"
    And the "orderIdInput" field should have placeholder "Enter Order ID"
    And the "searchBtn" should display "Search"
    And the "error" section should be "hidden"
    And the "errorMessage" should be "hidden"

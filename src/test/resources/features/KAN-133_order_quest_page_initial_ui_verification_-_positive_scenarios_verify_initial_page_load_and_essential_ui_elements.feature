Feature: Order Quest Page Initial UI Verification - Positive Scenarios

  Scenario: Verify initial page load and essential UI elements
    Given I navigate to the Order Quest application
    Then the page title should be "OrderQuest | Premium Order Search"
    And the 'Search Type' dropdown should be visible
    And the 'Order ID' input field should be visible with placeholder "Enter Order ID"
    And the 'Search' button should be visible with text "Search"
    And the 'Order Details' section should be visible and empty
    And the 'error' section should be hidden
    And the 'errorMessage' paragraph should be hidden

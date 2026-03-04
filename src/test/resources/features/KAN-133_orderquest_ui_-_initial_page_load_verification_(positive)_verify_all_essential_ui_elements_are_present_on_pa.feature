Feature: OrderQuest UI - Initial Page Load Verification (Positive)

  Scenario: Verify all essential UI elements are present on page load (Order ID default)
    Given I navigate to the OrderQuest application
    Then I should see the page title "OrderQuest | Premium Order Search"
    And I should see the search type dropdown
    And the "Order ID" option should be selected by default in the search type dropdown
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And the search results display area should be empty

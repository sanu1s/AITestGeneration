Feature: OrderQuest UI Elements - Positive Scenarios

  Scenario: Verify initial page load and essential UI elements
    Given I navigate to the OrderQuest page
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see the search type dropdown with "Order ID" selected
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty area for search results

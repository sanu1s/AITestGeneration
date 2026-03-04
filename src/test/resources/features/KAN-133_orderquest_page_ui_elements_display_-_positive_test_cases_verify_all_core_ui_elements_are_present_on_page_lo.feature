Feature: OrderQuest Page UI Elements Display - Positive Test Cases

  Scenario: Verify all core UI elements are present on page load
    Given I navigate to the OrderQuest page
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see the "Search Type" dropdown with "Order ID" selected by default
    And I should see the input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty area for displaying search results

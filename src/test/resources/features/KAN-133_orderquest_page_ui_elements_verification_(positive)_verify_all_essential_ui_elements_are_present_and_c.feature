Feature: OrderQuest Page UI Elements Verification (Positive)

  Scenario: Verify all essential UI elements are present and correctly displayed on page load
    Given I am on the OrderQuest page
    Then I should see the page title "OrderQuest | Premium Order Search"
    And I should see a search type dropdown with options "Order ID" and "Tracking Number"
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty search results area

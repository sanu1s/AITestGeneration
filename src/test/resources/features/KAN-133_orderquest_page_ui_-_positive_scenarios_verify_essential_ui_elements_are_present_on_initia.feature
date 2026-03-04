Feature: OrderQuest Page UI - Positive Scenarios

  Scenario: Verify essential UI elements are present on initial page load
    Given I navigate to the OrderQuest page
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see a search type selector with "Order ID" as the default option
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty area for displaying search results

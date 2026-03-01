Feature: OrderQuest Page UI Initial State - Positive Scenarios

  Scenario: Verify Initial Page Load and Essential UI Elements
    Given I navigate to the OrderQuest page
    Then I should see the page title "OrderQuest | Premium Order Search"
    And I should see the search type selection dropdown
    And I should see the input field with placeholder "Enter Order ID"
    And I should see the "Search" button
    And I should see an empty area for displaying search results

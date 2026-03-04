Feature: OrderQuest Page UI Elements Verification - Positive Scenarios

  Scenario: Verify Initial Page Load and Core UI Elements
    Given I navigate to the OrderQuest page
    Then I should see a prominent title "OrderQuest | Premium Order Search"
    And I should see a search type selection dropdown
    And "Order ID" should be the initially selected search type
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see a designated, empty area for displaying search results

Feature: OrderQuest Page UI Elements Visibility - Positive Scenarios

  Scenario: Verify Initial Page Load Elements
    Given I am on the OrderQuest page
    Then I should see the title "OrderQuest"
    And I should see a dropdown to select search type
    And the dropdown should have "Order ID" as a selectable option
    And the dropdown should have "Tracking Number" as a selectable option
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And the search results area should be empty

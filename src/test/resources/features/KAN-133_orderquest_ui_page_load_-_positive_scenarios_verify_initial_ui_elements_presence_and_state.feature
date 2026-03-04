Feature: OrderQuest UI Page Load - Positive Scenarios

  Scenario: Verify Initial UI Elements Presence and State
    Given I navigate to the OrderQuest application
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see a search type dropdown with "Order ID" as the default selected option
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And the designated search results area should be empty

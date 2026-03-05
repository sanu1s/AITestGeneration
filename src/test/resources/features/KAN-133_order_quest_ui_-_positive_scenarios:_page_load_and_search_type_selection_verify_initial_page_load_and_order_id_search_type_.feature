Feature: Order Quest UI - Positive Scenarios: Page Load and Search Type Selection

  Scenario: Verify Initial Page Load and Order ID Search Type Default
    Given I navigate to the OrderQuest application
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see the "Search Type" dropdown
    And "Order ID" should be the selected search type
    And I should see the input field labeled "Order Number"
    And the input field should have placeholder "Enter Order ID"
    And I should see a "Search" button with text "Search"
    And I should see an empty area for displaying search results

Feature: OrderQuest UI - Positive Scenarios: Verify Initial Page Load and Essential UI Elements

  Scenario: Verify all required UI elements are present on the OrderQuest page
    Given I navigate to "http://orderquest.com:7070"
    Then I should see a prominent title "OrderQuest | Premium Order Search"
    And I should see an input field clearly labeled "Order Number"
    And I should see an input field clearly labeled "Tracking Number"
    And I should see a "Search" button that can trigger a search action
    And I should see a designated, empty area for displaying search results

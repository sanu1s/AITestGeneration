Feature: OrderQuest Page UI Initialization - Positive Scenarios

  Scenario: Verify initial page load and essential UI elements
    Given I am on the Order Search Page
    Then I should see a prominent title "OrderQuest | Premium Order Search"
    And I should see an input field clearly labeled "Order Number"
    And I should see an input field clearly labeled "Tracking Number"
    And I should see a "Search" button
    And the "Search Results" section should be "visible"
    And the "Search Results" should contain text ""

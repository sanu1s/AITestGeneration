Feature: OrderQuest UI Verification - Positive Scenarios

  Scenario: Verify page title and search button are present on initial load
    Given I navigate to the OrderQuest application
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see a "Search" button

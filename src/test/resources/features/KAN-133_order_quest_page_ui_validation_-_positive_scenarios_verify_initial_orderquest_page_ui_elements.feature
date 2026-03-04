Feature: Order Quest Page UI Validation - Positive Scenarios

  Scenario: Verify Initial OrderQuest Page UI Elements
    Given I navigate to the OrderQuest application
    Then I should see the page title "OrderQuest | Premium Order Search"
    And I should see a dropdown to select search type
    And the dropdown should contain "Order ID" as an option
    And the dropdown should contain "Tracking Number" as an option
    And I should see an input field for search criteria
    And the input field should have the placeholder "Enter Order ID"
    And I should see a button labeled "Search"
    And the search results display area should be initially empty

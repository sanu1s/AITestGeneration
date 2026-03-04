Feature: OrderQuest Page UI - Positive Scenarios

  Scenario: Verify initial page load and static UI elements
    Given I navigate to "http://localhost:7070"
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see the search type dropdown with options "Order ID" and "Tracking Number"
    And the "Order ID" option should be selected by default
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty area for order details
    And I should see an empty area for display status
    And I should see an empty area for error messages

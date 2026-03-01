Feature: OrderQuest Page UI Elements - Positive Test Cases

  Scenario: Verify initial display of core UI elements on OrderQuest page
    Given I navigate to the OrderQuest page
    Then I should see the title "OrderQuest"
    And I should see a dropdown with options "Order ID" and "Tracking Number"
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty search results area

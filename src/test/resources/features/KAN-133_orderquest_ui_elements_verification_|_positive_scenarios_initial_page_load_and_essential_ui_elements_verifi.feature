Feature: OrderQuest UI Elements Verification | Positive Scenarios

  Scenario: Initial page load and essential UI elements verification
    Given I am on the OrderQuest page
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see a dropdown for search type
    And the search type dropdown should contain options "Order ID" and "Tracking Number"
    And the search type dropdown should have "Order ID" selected by default
    And I should see an input field with ID "orderIdInput"
    And the input field with ID "orderIdInput" should have placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty area for search results

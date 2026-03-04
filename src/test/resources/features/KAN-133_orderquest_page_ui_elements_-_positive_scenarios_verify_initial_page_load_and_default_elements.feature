Feature: OrderQuest Page UI Elements - Positive Scenarios

  Scenario: Verify Initial Page Load and Default Elements
    Given I navigate to the OrderQuest page
    Then I should see a prominent title "OrderQuest | Premium Order Search"
    And I should see a dropdown with ID "searchType"
    And the "searchType" dropdown should be selected with "Order ID"
    And I should see an input field with ID "orderIdInput"
    And the "orderIdInput" field should have placeholder "Enter Order ID"
    And I should see a "Search" button with ID "searchBtn"
    And I should see an empty designated area for search results with ID "orderDetails"
    And I should see an empty designated area for search results with ID "displayStatus"
    And I should see an empty designated area for search results with ID "error"

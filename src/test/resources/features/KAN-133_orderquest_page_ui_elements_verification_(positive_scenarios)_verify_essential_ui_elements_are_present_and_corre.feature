Feature: OrderQuest Page UI Elements Verification (Positive Scenarios)

  Scenario: Verify essential UI elements are present and correctly labeled
    Given I navigate to the OrderQuest application
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see a dropdown with ID "searchType" and options "Order ID" and "Tracking Number"
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a "Search" button with ID "searchBtn"

Feature: OrderQuest Page UI Elements - Positive Scenarios

  Scenario: Verify initial page load and essential UI components
    Given I navigate to "http://localhost:7070"
    Then I should see the title "OrderQuest"
    And I should see a dropdown with ID "searchType"
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" with text "Search"
    And I should see a designated empty area for displaying order details with ID "orderDetails"
    And I should see a designated empty area for displaying status with ID "displayStatus"

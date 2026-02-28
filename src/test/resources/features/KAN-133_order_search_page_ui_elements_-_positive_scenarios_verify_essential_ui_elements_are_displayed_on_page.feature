Feature: Order Search Page UI Elements - Positive Scenarios

  Scenario: Verify essential UI elements are displayed on page load
    Given I navigate to "http://localhost:7070/"
    Then I should see a prominent title like "Order Search"
    And I should see a dropdown with ID "searchType"
    And the "searchType" dropdown should contain option "Order ID"
    And the "searchType" dropdown should contain option "Tracking Number"
    And I should see an input field with ID "orderIdInput"
    And the "orderIdInput" field should have placeholder "Enter Order ID"
    And I should see a "Search" button with ID "searchBtn"
    And I should see a designated area for order details with ID "orderDetails"
    And I should see a designated area for display status with ID "displayStatus"

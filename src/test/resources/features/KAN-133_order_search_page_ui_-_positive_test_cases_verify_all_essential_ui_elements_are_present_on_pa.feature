Feature: Order Search Page UI - Positive Test Cases

  Scenario: Verify all essential UI elements are present on page load
    Given I navigate to http://localhost:7070/
    Then I should see a prominent title like "Order Search"
    And I should see a dropdown with ID "searchType"
    And the dropdown should contain option "Order ID"
    And the dropdown should contain option "Tracking Number"
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a "Search" button with ID "searchBtn"
    And I should see a designated area for displaying search results with ID "orderDetails"

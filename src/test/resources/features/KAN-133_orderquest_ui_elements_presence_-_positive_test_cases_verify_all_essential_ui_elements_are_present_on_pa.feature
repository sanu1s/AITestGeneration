Feature: OrderQuest UI Elements Presence - Positive Test Cases

  Scenario: Verify all essential UI elements are present on page load
    Given I navigate to the OrderQuest page
    Then I should see the prominent title "OrderQuest"
    And I should see a search type selection dropdown with ID "searchType"
    And the search type dropdown should contain the option "Order ID"
    And the search type dropdown should contain the option "Tracking Number"
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a "Search" button with ID "searchBtn"
    And I should see an empty search results display area with ID "orderDetails"

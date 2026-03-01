Feature: Order Search Page UI Verification (Positive Scenarios)

  Scenario: Verify all essential UI elements are present on initial load
    Given I navigate to the Order Search page
    Then I should see a prominent title "Order Search"
    And I should see a dropdown to select search type with ID "searchType"
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a "Search" button with ID "searchBtn"
    And I should see an empty area for displaying order details with ID "orderDetails"
    And I should see an empty area for displaying status messages with ID "displayStatus"

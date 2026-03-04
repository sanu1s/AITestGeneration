Feature: Order Quest Page UI - Positive Scenarios

  Scenario: Verify initial page load and essential UI elements
    Given I am on the OrderQuest homepage
    Then I should see the page title as "OrderQuest | Premium Order Search"
    And I should see a search type dropdown with ID "searchType"
    And the "searchType" dropdown should contain options "Order ID" and "Tracking Number"
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" with text "Search"
    And I should see an empty display area with ID "orderDetails"

Feature: OrderQuest Page UI Elements - Positive Scenarios

  Scenario: Verify Initial Page Load and Essential Elements
    Given I navigate to the OrderQuest page URL "http://orderquest.com:7070"
    Then I should see the page title "OrderQuest | Premium Order Search"
    And I should see a dropdown with ID "searchType"
    And the dropdown with ID "searchType" should contain option "Order ID"
    And the dropdown with ID "searchType" should contain option "Tracking Number"
    And I should see an input field with ID "orderIdInput"
    And the input field with ID "orderIdInput" should have placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" and text "Search"
    And I should see an empty search results area with ID "orderDetails"
    And I should see an empty error message area with ID "error"

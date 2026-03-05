Feature: OrderQuest Page UI Initial State - Positive Scenarios

  Scenario: Verify Page Title and Key UI Elements on Initial Load
    Given I navigate to the OrderQuest page
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see a search type dropdown with ID "searchType"
    And the search type dropdown should contain options "Order ID" and "Tracking Number"
    And the "Order ID" option should be selected by default in the "searchType" dropdown
    And I should see an input field with ID "orderIdInput" and placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" with text "Search"
    And I should see an empty search results area with ID "orderDetails"

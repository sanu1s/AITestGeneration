Feature: OrderQuest UI Elements Display - Positive Scenarios

  Scenario: Verify initial page load and core UI elements
    Given I navigate to "http://localhost:7070"
    Then I should see the title "OrderQuest | Premium Order Search"
    And I should see a dropdown with ID "searchType"
    And I should see an input field with ID "orderIdInput"
    And the input field with ID "orderIdInput" should have placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" with text "Search"
    And I should see an empty designated area with ID "orderDetails"
    And I should see an empty designated area with ID "displayStatus"

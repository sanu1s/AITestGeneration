Feature: Order Search Page UI Elements - Positive Test Cases

  Scenario: Verify Initial Page Load and UI Elements
    Given I am on the Order Search Page
    Then the page title should be "OrderQuest | Premium Order Search"
    And the "searchType" dropdown should be visible
    And the "orderIdInput" field should be visible
    And the "orderIdInput" field should have placeholder "Enter Order ID"
    And the "searchBtn" button should be visible
    And the "orderDetails" section should be visible
    And the "orderDetails" section should be empty
    And the "error" section should be hidden
    And the "errorMessage" paragraph should be hidden

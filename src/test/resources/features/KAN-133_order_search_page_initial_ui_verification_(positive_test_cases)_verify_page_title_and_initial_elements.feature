Feature: Order Search Page Initial UI Verification (Positive Test Cases)

  Scenario: Verify Page Title and Initial Elements
    Given I am on the Order Search Page
    Then the page title should be "OrderQuest | Premium Order Search"
    And the "searchType" dropdown should be visible
    And the "orderIdInput" field should be visible
    And the "searchBtn" button should be visible
    And the "orderDetails" section should be visible
    And the "orderDetails" section should be empty
    And the "error" section should be hidden
    And the "errorMessage" should be hidden

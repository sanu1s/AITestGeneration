Feature: OrderQuest UI Elements Presence - Positive Test Cases

  Scenario: Verify default state and accessibility of key search components
    Given I open the OrderQuest application page
    Then the search type dropdown with ID "searchType" should be enabled
    And the input field with ID "orderIdInput" should be enabled
    And the "Search" button with ID "searchBtn" should be enabled

Feature: OrderQuest Page UI Elements - Positive Scenarios

  Scenario: Verify search type options in the dropdown
    Given I navigate to "http://localhost:7070"
    Then the dropdown with ID "searchType" should contain option "Order ID"
    And the dropdown with ID "searchType" should contain option "Tracking Number"

Feature: OrderQuest UI Elements Display - Positive Scenarios

  Scenario: Verify search type options are available in the dropdown
    Given I navigate to "http://localhost:7070"
    When I interact with the dropdown with ID "searchType"
    Then I should see option "Order ID" in the dropdown
    And I should see option "Tracking Number" in the dropdown

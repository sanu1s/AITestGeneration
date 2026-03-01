Feature: Order Quest UI Page - Positive Scenarios

  Scenario: Verify Page Title and Search Type Dropdown Presence
    Given I navigate to the OrderQuest application
    Then I should see the page title containing "OrderQuest"
    And I should see a dropdown with ID "searchType"
    And the "searchType" dropdown should contain option "Order ID"
    And the "searchType" dropdown should contain option "Tracking Number"

Feature: OrderQuest Page UI Initial State - Positive Scenarios

  Scenario: Verify Search Type Options in Dropdown
    Given I navigate to the OrderQuest page
    Then the search type dropdown should contain "Order ID"
    And the search type dropdown should contain "Tracking Number"

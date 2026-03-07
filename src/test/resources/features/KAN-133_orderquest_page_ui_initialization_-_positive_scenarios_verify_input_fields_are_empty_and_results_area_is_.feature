Feature: OrderQuest Page UI Initialization - Positive Scenarios

  Scenario: Verify input fields are empty and results area is ready
    Given I am on the Order Search Page
    And I enter "" into the "Order Number" field
    And I enter "" into the "Tracking Number" field
    Then the "Order Number" field should have placeholder "Enter Order ID"
    And the "Tracking Number" field should have placeholder "Enter Tracking Number"
    And the "Search Results" section should be "visible"
    And the "Search Results" should contain text ""

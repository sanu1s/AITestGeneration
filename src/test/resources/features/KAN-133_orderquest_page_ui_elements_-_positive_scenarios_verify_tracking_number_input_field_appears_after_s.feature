Feature: OrderQuest Page UI Elements - Positive Scenarios

  Scenario: Verify Tracking Number Input field appears after selection
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the "searchType" dropdown
    Then the "orderIdInput" field should have placeholder "Enter Tracking Number"

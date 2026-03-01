Feature: OrderQuest Page UI Elements Visibility - Positive Scenarios

  Scenario: Verify Switching Input Field to Tracking Number
    Given I am on the OrderQuest page
    When I select "Tracking Number" from the search type dropdown
    Then I should see an input field with placeholder "Enter Tracking Number"

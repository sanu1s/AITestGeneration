Feature: OrderQuest UI Elements - Positive Scenarios

  Scenario: Verify placeholder changes when search type is switched to Tracking Number
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the search type dropdown
    Then I should see an input field with placeholder "Enter Tracking Number"
    And I should see the search type dropdown with "Tracking Number" selected

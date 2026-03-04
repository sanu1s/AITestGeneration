Feature: OrderQuest UI Elements - Positive Scenarios

  Scenario: Verify placeholder reverts when search type is switched back to Order ID
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the search type dropdown
    And I select "Order ID" from the search type dropdown
    Then I should see an input field with placeholder "Enter Order ID"
    And I should see the search type dropdown with "Order ID" selected

Feature: OrderQuest Page UI Elements - Positive Test Cases

  Scenario: Verify input field behavior when selecting 'Tracking Number' from dropdown
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the search type dropdown
    Then I should see the input field with placeholder "Enter Order ID"
    And I should still see the "Search" button

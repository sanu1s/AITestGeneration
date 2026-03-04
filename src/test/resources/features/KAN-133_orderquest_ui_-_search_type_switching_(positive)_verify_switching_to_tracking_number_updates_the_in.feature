Feature: OrderQuest UI - Search Type Switching (Positive)

  Scenario: Verify switching to Tracking Number updates the input field
    Given I navigate to the OrderQuest application
    When I select "Tracking Number" from the search type dropdown
    Then the "Tracking Number" option should be selected in the search type dropdown
    And I should see an input field with placeholder "Enter Tracking Number"

Feature: OrderQuest Page UI - Positive Scenarios

  Scenario: Verify input field and selector state when "Tracking Number" is selected
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the search type selector
    Then the search type selector should display "Tracking Number"
    And I should see an input field with placeholder "Enter Order ID"

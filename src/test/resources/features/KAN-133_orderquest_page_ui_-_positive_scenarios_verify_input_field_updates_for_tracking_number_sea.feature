Feature: OrderQuest Page UI - Positive Scenarios

  Scenario: Verify input field updates for Tracking Number search
    Given I navigate to "http://localhost:7070"
    When I select "Tracking Number" from the search type dropdown
    Then I should see an input field with placeholder "Enter Tracking Number"

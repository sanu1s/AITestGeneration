Feature: Order Quest UI - Positive Scenarios: Page Load and Search Type Selection

  Scenario: Verify Switching to Tracking Number Search Type
    Given I navigate to the OrderQuest application
    When I select "Tracking Number" from the "Search Type" dropdown
    Then "Tracking Number" should be the selected search type
    And I should see the input field labeled "Tracking Number"
    And the input field should have placeholder "Enter Tracking Number"
